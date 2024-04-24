#pragma once

#include <cassert>
#include <chrono>
#include <random>
#include <string>

#include <iostream>
#include <fstream>
#include <sstream>

#include <optional>
#include <vector>
#include <unordered_set>
#include <unordered_map>

#include <boost/heap/pairing_heap.hpp>
#include <boost/bimap.hpp>

extern std::default_random_engine rng;

#define NONE -1
#define INFTY INT_MAX

                                 using str = std::string;
template<typename T>             using opt = std::optional<T>;
template<typename T>             using vec = std::vector<T>;
template<typename T>             using set = std::unordered_set<T>;
template<typename T, typename U> using map = std::unordered_map<T, U>;

template<typename T>
struct std::hash<std::unordered_set<T>>
{
    size_t operator()(const std::unordered_set<T> &unordered_set) const
    {
        size_t hash = 0;
        for (const T &v: unordered_set)
        {
            size_t x = std::hash<T>()(v);
            x = ((x >> 16) ^ x) * 0x45d9f3b;
            x = ((x >> 16) ^ x) * 0x45d9f3b;
            x = (x >> 16) ^ x;
            hash += x;
        }
        return hash;
    }
};

template<typename T>
struct std::hash<std::vector<T>>
{
    size_t operator()(const std::vector<T> &vector) const
    {
        size_t hash = 0;
        for (const T &v: vector)
        {
            size_t x = std::hash<T>()(v);
            x = ((x >> 16) ^ x) * 0x45d9f3b;
            x = ((x >> 16) ^ x) * 0x45d9f3b;
            x = (x >> 16) ^ x;
            hash += x;
        }
        return hash;
    }
};


class Object
{
public:
    typedef int64_t Id;
    static Id last_used_id;
    Id id;

    Object() : id(NONE) {}

    bool is_none() const
    {
        return this->id == NONE;
    }

    bool operator==(const Object &other) const
    {
        return this->id == other.id;
    }

    bool operator!=(const Object &other) const
    {
        return this->id != other.id;
    }

    operator size_t() const
    {
        assert(this->id >= -3); // This project have objects with id at least -3.
        return this->id + 3;
    }
};

#define DEFINE_OBJECT_HASH(Object)\
namespace std\
{\
    template<>\
    struct hash<Object>\
    {\
        std::size_t operator()(const Object& object) const\
        {\
            return object.id;\
        }\
    };\
}

DEFINE_OBJECT_HASH(Object);

#include <gmpxx.h>
template<>
struct std::hash<mpz_class>
{
    size_t operator()(const mpz_class &x) const
    {
        return x.get_ui();
    }
};

double get_ellapsed_time();
double get_memory_usage();

double get_time_limit();
double get_memory_limit();

str get_output(const str &label, const str &command, const str &input = {}, const opt<double> &opt_time_limit = std::nullopt);

vec<str> split(const str &s, const str &delimiter);

template<typename ReturnType, typename... Args>
class Function
{
public:
    const void* ptr;
    std::type_index return_type;
    vec<std::type_index> return_args;
    opt<std::type_index> opt_class;
    opt<Object> opt_object;

    Function(ReturnType (*f)(Args...));
    template<typename Class> Function(ReturnType (Class::*f)(Args...) const);
    template<typename Class> Function(ReturnType (Class::*f)(Args...) const, const Class &object);

    bool operator==(const Function &other) const;
};

template<typename ReturnType, typename... Args>
struct std::hash<Function<ReturnType, Args...>>
{
    size_t operator()(const Function<ReturnType, Args...> &function) const
    {
        return reinterpret_cast<size_t>(function.ptr) + (function.opt_object.has_value()? function.opt_object->id: 0);
    }
};

template<typename ReturnType, typename... Args>
Function<ReturnType, Args...>::Function(ReturnType (*f)(Args...)) :
    ptr((void*)(*f)),
    return_type(typeid(ReturnType))
{
    return_args.insert(return_args.end(), {typeid(Args)...});
}

template<typename ReturnType, typename... Args>
template<typename Class>
Function<ReturnType, Args...>::Function(ReturnType (Class::*f)(Args...) const) :
    ptr((void*)(f)),
    return_type(typeid(ReturnType)),
    opt_class(typeid(Class))
{
    return_args.insert(return_args.end(), {typeid(Args)...});
}

template<typename ReturnType, typename... Args>
template<typename Class>
Function<ReturnType, Args...>::Function(ReturnType (Class::*f)(Args...) const, const Class &object) :
    ptr((void*)(f)),
    return_type(typeid(ReturnType)),
    opt_class(typeid(Class)),
    opt_object(object)
{
    static_assert(std::is_base_of<Object, Class>::value);
    return_args.insert(return_args.end(), {typeid(Args)...});
}

template<typename ReturnType, typename... Args>
bool Function<ReturnType, Args...>::operator==(const Function &other) const
{
    return this->ptr == other.ptr and this->opt_class == other.opt_class and this->opt_object == other.opt_object;
}

// template<typename ReturnType, typename... Args>
// class FunctionCache
// {
// public:
//     const Function<ReturnType, Args...> &function;

//     template<typename Key> size_t size() const;
//     template<typename Key> bool contains(const Key &key) const;
//     template<typename Key> ReturnType &operator[](const Key &key) const;
// };

class FunctionsCache
{
public:
    // template<typename Key, typename ReturnType, typename... Args> static map<Function<ReturnType, Args...>, map<Key, ReturnType>> data;
    template<typename ReturnType, typename... Args> static map<Function<ReturnType, Args...>, map<Object, ReturnType>> data;

    // template<typename ReturnType, typename... Args> FunctionCache<ReturnType, Args...> operator[](const Function<ReturnType, Args...> &function) const;
    template<typename ReturnType, typename... Args> map<Object, ReturnType> &operator[](const Function<ReturnType, Args...> &function) const;
};

// template<typename ReturnType, typename... Args>
// template<typename Key>
// size_t FunctionCache<ReturnType, Args...>::size() const
// {
//     return FunctionsCache::data<Key, ReturnType, Args...>[this->function].size();
// }

// template<typename ReturnType, typename... Args>
// template<typename Key>
// bool FunctionCache<ReturnType, Args...>::contains(const Key &key) const
// {
//     return FunctionsCache::data<Key, ReturnType, Args...>[this->function].contains(key);
// }

// template<typename ReturnType, typename... Args>
// template<typename Key>
// ReturnType &FunctionCache<ReturnType, Args...>::operator[](const Key &key) const
// {
//     return FunctionsCache::data<Key, ReturnType, Args...>[this->function].operator[](key);
// }

// template<typename ReturnType, typename... Args>
// FunctionCache<ReturnType, Args...> FunctionsCache::operator[](const Function<ReturnType, Args...> &function) const
// {
//     return FunctionCache(function);
// }

template<typename ReturnType, typename... Args>
map<Object, ReturnType> &FunctionsCache::operator[](const Function<ReturnType, Args...> &function) const
{
    return data<ReturnType, Args...>[function];
}

// template<typename Key, typename ReturnType, typename... Args>
// map<Function<ReturnType, Args...>, map<Key, ReturnType>> FunctionsCache::data;

template<typename ReturnType, typename... Args>
map<Function<ReturnType, Args...>, map<Object, ReturnType>> FunctionsCache::data;

extern FunctionsCache functions_cache;
extern FunctionsCache functions_storage;

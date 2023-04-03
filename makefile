and_star: source/*.cpp source/state_heuristics/*.cpp source/policy_heuristics/*.cpp
	g++ -std=c++2a -O3 \
	./source/and_star.cpp \
	-o ./and_star \
	-l gmpxx -l gmp

clean:
	rm -f and_star

all: and_star

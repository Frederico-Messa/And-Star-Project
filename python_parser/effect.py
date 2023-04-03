from dataclasses import dataclass
from python_parser.atomic_effect import AtomicEffect

@dataclass(eq=True, frozen=True)
class Effect:
    atomic_effects: frozenset[AtomicEffect]

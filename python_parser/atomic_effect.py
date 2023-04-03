from dataclasses import dataclass
from python_parser.variable import Variable
from python_parser.partial_state import PartialState

@dataclass(eq=True, frozen=True)
class AtomicEffect:
    condition: PartialState
    affected_variable: Variable
    assignment_value: int

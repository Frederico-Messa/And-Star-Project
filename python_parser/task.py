from dataclasses import dataclass
from python_parser.variable import Variable
from python_parser.action import Action
from python_parser.partial_state import PartialState
from python_parser.state import State

@dataclass(eq=True, frozen=True)
class Task:
    variables: tuple[Variable]
    actions: tuple[Action]
    initial_state: State
    goal_condition: PartialState
    mutexes: frozenset[PartialState]

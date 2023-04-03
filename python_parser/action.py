from __future__ import annotations
from dataclasses import dataclass
from python_parser.effect import Effect
from python_parser.partial_state import PartialState

@dataclass(eq=True, frozen=True)
class Action:
    name: str
    precondition: PartialState
    effects: frozenset[Effect]
    cost: int
    is_an_axiom: bool
    id: int

    def __eq__(self, other_action: Action) -> bool:
        if not isinstance(other_action, Action): return False
        return self.id == other_action.id

    def __hash__(self) -> int:
        return self.id

    def __repr__(self) -> str:
        return self.name

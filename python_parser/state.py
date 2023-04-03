from __future__ import annotations
from dataclasses import dataclass
from python_parser.partial_state import PartialState
import python_parser.action
import python_parser.effect

@dataclass(eq=True, frozen=True)
class State(PartialState):
    def __post_init__(self) -> None:
        assert len(self.facts) == len(State.task_variables)
        super().__post_init__()

    # def models(self, partial_state: PartialState) -> bool:
    #     return super().models(partial_state)

    # def can_receive_action(self, action: python_parser.action.Action) -> bool:
    #     return super().can_receive_action(action)

    # def get_successors(self, action: python_parser.action.Action) -> frozenset[State]:
    #     return super().get_successors(action)

    # def _get_successor(self,  effect: python_parser.effect.Effect) -> State:
    #     return super()._get_successor(effect)

    def __eq__(self, other_state: State) -> bool:
        # return super().__eq__(other_state)
        return self.id == other_state.id

    def __hash__(self) -> int:
        # return super().__hash__()
        return self.id

    # def __str__(self) -> str:
    #     return super().__str__()

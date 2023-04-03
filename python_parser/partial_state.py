from __future__ import annotations
from dataclasses import dataclass
from typing import ClassVar
from python_parser.variable import Variable
import python_parser.action
import python_parser.effect

@dataclass(eq=True, frozen=True)
class PartialState:
    task_variables: ClassVar[tuple[Variable]]

    facts: dict[Variable, int]
    id: int = None

    def __post_init__(self) -> None:
        if self.id == None:
            object.__setattr__(self, 'id', sum((value + 1) * variable.id for variable, value in self.facts.items()))

    def models(self, other_partial_state: PartialState) -> bool:
        # return all(value == self.facts[variable] for variable, value in other_partial_state.facts.items())
        for variable, value in other_partial_state.facts.items():
            if value != self.facts[variable]: return False
        return True

    def can_receive_action(self, action: python_parser.action.Action) -> bool:
        # return self.models(action.precondition)
        for variable, value in action.precondition.facts.items():
            if value != self.facts[variable]: return False
        return True

    def get_successors(self, action: python_parser.action.Action) -> frozenset[PartialState]:
        assert self.can_receive_action(action)
        return {self._get_successor(action_effect) for action_effect in action.effects}

    def _get_successor(self, effect: python_parser.effect.Effect) -> PartialState:
        successor_partial_state_facts: dict[Variable, str] = dict(self.facts)
        successor_partial_state_id: int = self.id
        for effect_atomic_effect in effect.atomic_effects:
            if not self.models(effect_atomic_effect.condition): continue
            delta = effect_atomic_effect.assignment_value
            if effect_atomic_effect.affected_variable in self.facts.keys(): delta -= self.facts[effect_atomic_effect.affected_variable]
            successor_partial_state_facts[effect_atomic_effect.affected_variable] = effect_atomic_effect.assignment_value
            successor_partial_state_id += delta * effect_atomic_effect.affected_variable.id
        successor_partial_state = type(self)(facts=successor_partial_state_facts, id=successor_partial_state_id)
        return successor_partial_state

    def __eq__(self, other_partial_state: PartialState) -> bool:
        return self.id == other_partial_state.id

    def __hash__(self) -> int:
        return self.id

    def __str__(self) -> str:
        return f's_{self.id}: ' + '{' + ', '.join(f'{variable.name}: {variable.domain[value]}' for variable, value in self.facts.items()) + '}'

from __future__ import annotations
from dataclasses import dataclass

@dataclass(eq=True, frozen=True)
class Variable:
    name: str
    domain: tuple[str]
    # axiom_layer: int
    # axiom_default_value: int
    id: int

    def __eq__(self, other_variable: Variable) -> bool:
        return self.id == other_variable.id

    def __hash__(self) -> int:
        return self.id
        
    def __repr__(self) -> str:
        return self.name

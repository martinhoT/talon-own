from typing import Dict
from talon import Module, actions


mod = Module()

keymap: Dict[str, str] = {
    "left": "a",
    "down": "s",
    "right": "d",
    "up": "space",
    "far": "delete",
    "pot": "end",
    "my": "pagedown",
    "elk": "pageup",
    "hug": "home",
    "ski": "insert",
}


@mod.capture(rule="up | down | left | right")
def direction(m) -> str:
    return keymap.get(str(m), "s")


@mod.capture(rule="far | pot | my | elk")
def normal_version(m) -> str:
    return keymap.get(str(m), "s")


def press_key(key: str) -> None:
    actions.key(" ".join(k + ":down" for k in key.split(" ")))
    actions.sleep("32ms")
    actions.key(" ".join(k + ":up" for k in key.split(" ")))


@mod.action_class
class GBVSRActions:
    def normal(normal_version: str, crouching: bool = False) -> None:
        """Perform a normal attack."""
        key = normal_version
        if crouching:
            key += " s"
        press_key(key)

    def skill(normal_version: str, direction: str) -> None:
        """Perform the character's skill of the specified version."""
        key = "insert"
        if normal_version:
            key += " " + normal_version
        if direction:
            key += " " + direction
        press_key(key)

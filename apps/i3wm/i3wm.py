import subprocess

from talon import Module, actions, settings

mod = Module()


@mod.action_class
class Actions:
    def i3wm_move_workspace(to: str):
        """Move the focused workspace"""
        subprocess.check_call(("i3-msg", "move", "workspace", "to", "output", to))

    def i3wm_status():
        """Show the status bar for some time. Useful when the hide mode is enabled."""
        key = settings.get("user.i3_mod_key")
        actions.key(f"{key}:down")
        actions.sleep("3000ms")
        actions.key(f"{key}:up")

    def i3wm_devconsole():
        """Open the "developer" console."""
        key = settings.get("user.i3_mod_key")
        actions.key(f"{key}-`")

from pathlib import Path

from talon import Module, ui

mod = Module()


@mod.action_class
class Actions:

    def talon_edit():
        """Open the talon user directory for editing."""
        ui.launch(path="code", args=[f"{Path.home()}/.talon/user"])

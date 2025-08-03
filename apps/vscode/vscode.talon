app: vscode
-
code peruse:
    user.vscode("workbench.action.terminal.focus")
    sleep(100ms)
    insert('code-sel')
    sleep(100ms)
    key(enter)

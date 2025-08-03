mode: user.gaming
-

settings():
    speech.timeout = 0
    key_hold = 0
    key_wait = 0

^gaming stop$:
    mode.disable("user.gaming")
    mode.enable("command")
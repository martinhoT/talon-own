os: linux
tag: user.i3wm
-

(shuffle | move (work | workspace) left): user.i3wm_move_workspace("left")
(shuffle | move (work | workspace) right): user.i3wm_move_workspace("right")
(shuffle | move (work | workspace) up): user.i3wm_move_workspace("up")
(shuffle | move (work | workspace) down): user.i3wm_move_workspace("down")

status:
    user.i3wm_status()

dev console:
    user.i3wm_devconsole()

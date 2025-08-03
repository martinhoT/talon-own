title: /Granblue Fantasy Versus/
mode: user.gaming
-

<user.normal_version>:
    user.normal(normal_version, false)
    sleep(256ms)

crow <user.normal_version>:
    user.normal(normal_version, true)
    sleep(256ms)

ski [<user.normal_version>] [<user.direction>]:
    user.skill(normal_version or "", direction or "")
    sleep(256ms)

west:
    key(a:down)
    key(d:up)

east:
    key(d:down)
    key(a:up)

sit:
    key(s:down)

new:
    key(s:up)
    key(a:up)
    key(d:up)

fly:
    key(space:down)
    sleep(32ms)
    key(space:up)

fly high:
    key(s:down)
    sleep(32ms)
    key(s:up)
    key(space:down)
    sleep(32ms)
    key(space:up)


soup:
    key(insert:down home:down)
    sleep(32ms)
    key(insert:up home:up)

ultra:
    key(insert:down home:down pageup:down)
    sleep(32ms)
    key(insert:up home:up pageup:up)

hug [<user.direction>]:
    key(home:down)
    sleep(32ms)
    key(home:up)

strike:
    key(end:down pagedown:down)
    sleep(32ms)
    key(end:up pagedown:up)

dash:
    key(rctrl:down)
    sleep(32ms)
    key(rctrl:up)

reset:
    key(r:down)
    sleep(32ms)
    key(r:up)

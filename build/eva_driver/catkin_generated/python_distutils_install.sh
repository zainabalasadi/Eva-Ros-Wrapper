#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/zainab/thesis/src/eva_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/zainab/thesis/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/zainab/thesis/install/lib/python3/dist-packages:/home/zainab/thesis/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/zainab/thesis/build" \
    "/usr/bin/python3" \
    "/home/zainab/thesis/src/eva_driver/setup.py" \
     \
    build --build-base "/home/zainab/thesis/build/eva_driver" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/zainab/thesis/install" --install-scripts="/home/zainab/thesis/install/bin"

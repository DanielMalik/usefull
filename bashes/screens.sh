#!/usr/bin/env bash

# new screen
screen -R [name]

# list all screens
screen -ls

# enter selected screen
screen -r [name]

# detach end exit: ctrl+A crtl+D or ctrl+A :quit

# delete screen
screen -X -S [name] quit

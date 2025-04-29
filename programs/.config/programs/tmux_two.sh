#!/bin/sh

tmux new-session -s "Main" -d -x "105" -y "93"
tmux split-window -l '25%'

tmux attach-session

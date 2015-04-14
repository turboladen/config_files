#!/bin/bash

CURRENT_SESSION=${PWD##*/}

# Start up the tmux session with specific name
tmux new-session -s $CURRENT_SESSION -n editor -d

# VIM window
tmux send-keys -t $CURRENT_SESSION 'vim' C-m
# tmux rename-window vim

# RSpec pane for running tests
# tmux split-window -v -p 40 -t $CURRENT_SESSION
# tmux split-window -v -t $CURRENT_SESSION
# tmux select-layout -t $CURRENT_SESSION main-horizontal
# tmux rename-window rspec

# Window for shell
tmux new-window -n shell -t $CURRENT_SESSION

# Select the first window
tmux select-window -t 1

# Attach the tmux session
tmux -2 attach -t $CURRENT_SESSION

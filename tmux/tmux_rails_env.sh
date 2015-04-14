#!/bin/bash

CURRENT_SESSION=${PWD##*/}

# Start up the tmux session with specific name. First window is for editing.
tmux new-session -s $CURRENT_SESSION -n editor -d

# VIM window
tmux send-keys -t $CURRENT_SESSION 'vim' C-m

# RSpec pane for running tests
# tmux split-window -v -p 20 -t $CURRENT_SESSION
# tmux split-window -v -t $CURRENT_SESSION
# tmux select-layout -t $CURRENT_SESSION main-horizontal

# Window for running development server
tmux new-window -n servers -t $CURRENT_SESSION
# tmux split-window -v -p 20 -t $CURRENT_SESSION:2
tmux split-window -v -t $CURRENT_SESSION:2
tmux select-layout -t $CURRENT_SESSION:2 main-horizontal

# Run core and dependent apps
tmux send-keys -t $CURRENT_SESSION:2.1 'z core' C-m
tmux send-keys -t $CURRENT_SESSION:2.1 'foreman start' C-m

# Run the server
tmux send-keys -t $CURRENT_SESSION:2.2 'bin/rails server' C-m

# Select the first window
tmux select-window -t $CURRENT_SESSION:1

# Attach the tmux session
tmux -2 attach -t $CURRENT_SESSION

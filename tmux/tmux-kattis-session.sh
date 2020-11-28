#!/bin/sh
tmux new-session    -d  'vim';
tmux split-window   -h  'make watch'; # this goes well with my kattis template for c++
tmux resize-pane    -y 5 -x 10;
tmux split-window   -v 'make watch-output';
tmux new-window        'vim in.in';
tmux -2 attach-session -d;

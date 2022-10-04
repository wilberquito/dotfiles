#!/bin/bash

tmux new-session \; \
  split-window -h -p 65 \; \
  send-keys 'vi .' C-m \; \
  select-pane -t 0 \; \
  send-keys 'git status -u --short' C-m \; \
  split-window -v -p 40 \; \
  send-keys 'git log --oneline' C-m \; \
  select-pane -t 0 \; \
  select-pane -t 2 \; \

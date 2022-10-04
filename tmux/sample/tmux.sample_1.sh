#!/bin/bash

tmux new-session \; \
  send-keys 'vi .' C-m \; \
  split-window -v \; \
  split-window -h \; \
  send-keys 'top' C-m \; \
  select-pane -t 1 \; \
  split-window -v \; \
  send-keys 'weechat' C-m \;


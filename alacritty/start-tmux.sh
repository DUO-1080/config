#!/bin/bash

# 检查是否有现有的 tmux 会话
if tmux ls &> /dev/null; then
  # 如果有现有的会话，则附加到它
  exec tmux attach-session -t 0
else
  # 如果没有现有的会话，则创建一个新的会话
  exec tmux new-session
fi


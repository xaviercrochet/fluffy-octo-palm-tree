set -g mouse on
bind r source-file ~/.tmux.conf

#switch panes vim style
bind -r k select-pane -U
bind -r j select-pane -D
bind -r h select-pane -L
bind -r l select-pane -R
unbind Up
unbind Down
unbind Left
unbind Right
bind-key s split-window
bind-key v split-window -h
unbind %
unbind \"


# remap prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

set -g @plugin 'tmux-plugins/tmux-battery'

set -g base-index 1
set -g default-terminal "screen-256color"

set-option -g status-position top
set-option -g status-justify centre

set -g status-left '#{battery_status_bg} #{battery_icon} #{battery_percentage} '
set -g status-right '%d %h %Y %l:%M '

#plugin manager
run '~/.tmux/plugins/tpm/tpm'


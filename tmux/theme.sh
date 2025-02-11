# https://github.com/nicknisi/dotfiles

#### COLOUR

tm_icon="☰"
tm_host_icon="♟"
tm_icon_download="↓"
tm_icon_upload="↑"


tm_background=default
tm_color_active=colour39
tm_color_inactive=colour245
tm_color_feature=colour198
tm_color_music=colour198
tm_active_border_color=colour39
tm_color_host=colour136



# separators
tm_separator_left_bold="◀"
tm_separator_left_thin="❮"
tm_separator_right_bold="▶"
tm_separator_right_thin="❯"


set-option -g status on
set -g status-left-length 120
set -g status-right-length 150
set -g status-interval 5

set-option -g status-justify "centre"


# default statusbar colors
# set-option -g status-bg colour0
set-option -g status-fg $tm_color_active
set-option -g status-bg $tm_background
set-option -g status-style default

# default window title colors
set-window-option -g window-style fg=$tm_color_inactive
set-window-option -g window-style bg=default
set -g window-status-format "#I:#W"

# active window title colors
set-window-option -g window-status-current-style fg=$tm_color_active
set-window-option -g window-status-current-style bg=default
set-window-option -g window-status-current-format "[#I:#W]#[default]"



set-window-option -g window-status-activity none
set-window-option -g window-status-activity-style fg=$tm_color_host
set-window-option -g window-status-activity-style bg=$tm_background



# pane border
set-option -g pane-border-style fg=$tm_color_inactive
set-option -g pane-active-border-style fg=$tm_active_border_color

# message text
set-option -g message-style bg=default
set-option -g message-style fg=$tm_color_active

# pane number display
set-option -g display-panes-active-colour $tm_color_active
set-option -g display-panes-colour $tm_color_inactive

# clock
set-window-option -g clock-mode-colour $tm_color_active

tm_systeminfo="#[fg=$tm_color_inactive]#(cut -d ' ' -f -3 /proc/loadavg)"

tm_network="#[default,fg=$tm_color_inactive]#(~/dotfiles/tmux/network_tx.sh)$tm_icon_upload #(~/dotfiles/tmux/network_rx.sh)$tm_icon_download"
#tm_network=""

#tm_tunes="#[fg=$tm_color_music]#(osascript ~/.dotfiles/applescripts/tunes.scpt)"
#tm_battery="#(~/.dotfiles/bin/battery_indicator.sh)"

tm_date="#[fg=$tm_color_inactive] %T"

tm_hostinfo="#[fg=$tm_color_host,bold]$tm_host_icon #(whoami)@#H"

tm_session_name="#[fg=$tm_color_feature,bold]$tm_icon #S"

set -g status-left $tm_session_name' '$tm_hostinfo
set -g status-right $tm_network'  '$tm_systeminfo' '$tm_date




set -g tm_hostinfo '#[fg=${tm_color_host},bold]${tm_host_icon} #(whoami)@#H'
set -g tm_session_name '#[fg=${tm_color_feature},bold]${tm_icon} #S'






#~ set-window-option -g window-status-current-format "#I:#W"
#~ set-window-option -g window-status-format "#I:#W"


#~ set -g status-left '#[fg=colour37](#S) #(whoami)@#H'
#~ set -g status-right '#[fg=yellow]#(cut -d " " -f 1-3 /proc/loadavg)#[default] #[fg=white]%H:%M#[default]'









































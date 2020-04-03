#!/bin/bash
black="#1c1c1c"
blue="#61afef"
yellow="#ff8700"
red="#800000"
white="#aab2bf"
green="#87875f"
visual_grey="#3e4452"
comment_grey="#585858"

set() {
   local option=$1
   local value=$2
   tmux set-option -gq "$option" "$value"
}

setw() {
   local option=$1
   local value=$2
   tmux set-window-option -gq "$option" "$value"
}

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"

set "message-fg" "$white"
set "message-bg" "$black"

set "message-command-fg" "$white"
set "message-command-bg" "$black"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$black"
setw "window-status-bg" "$black"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$black"
setw "window-status-activity-fg" "$black"
setw "window-status-activity-attr" "none"

setw "window-status-separator" ""

set "window-style" "fg=$comment_grey"
set "window-active-style" "fg=$white"

set "pane-border-fg" "$white"
set "pane-border-bg" "$black"
set "pane-active-border-fg" "$green"
set "pane-active-border-bg" "$black"

set "display-panes-active-colour" "$yellow"
set "display-panes-colour" "$blue"

set "status-bg" "$black"
set "status-fg" "$white"

set "@prefix_highlight_fg" "$black"
set "@prefix_highlight_bg" "$green"
set "@prefix_highlight_copy_mode_attr" "fg=$black,bg=$green"
set "@prefix_highlight_output_prefix" "  "

time_format="%R"
date_format="%d/%m/%Y"

set "status-right" "#[fg=$white,bg=$black,nounderscore,noitalics]${time_format}  ${date_format} #[fg=$green,bg=$black,nobold,nounderscore,noitalics]#[fg=$black,bg=$green,bold] #h #[fg=$yellow, bg=$green]#[fg=$red,bg=$yellow]"
set "status-left" "#[fg=$black,bg=$green,bold] #S #{prefix_highlight}#[fg=$green,bg=$black,nobold,nounderscore,noitalics]"

set "window-status-format" "#[fg=$black,bg=$black,nobold,nounderscore,noitalics]#[fg=$white,bg=$black] #I  #W #[fg=$black,bg=$black,nobold,nounderscore,noitalics]"
set "window-status-current-format" "#[fg=$black,bg=$visual_grey,nobold,nounderscore,noitalics]#[fg=$white,bg=$visual_grey,nobold] #I  #W #[fg=$visual_grey,bg=$black,nobold,nounderscore,noitalics]"

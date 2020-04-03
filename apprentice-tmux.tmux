#!/bin/bash
pure_black="#000000"
black="#1c1c1c"
blue="#8fafd7"
orange="#ff8700"
red="#800000"
light_red="#af5f5f"
white="#aab2bf"
green="#87875f"
visual_grey="#3e4452"
comment_grey="#585858"
light_green=#5f875f

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

set "status-attr" "none"
set "status-left-attr" "none"

set "mode-style" "fg=$black,bg=$blue"
set "window-style" "fg=$comment_grey"
set "window-active-style" "fg=$white"

set "pane-border-style" "fg=$white,bg=$pure_black"
set "pane-active-border-style" "fg=$light_green,bg=$pure_black"

set "display-panes-active-colour" "$light_red"
set "display-panes-colour" "$blue"

set "@prefix_highlight_fg" "$black"
set "@prefix_highlight_bg" "$green"
set "@prefix_highlight_copy_mode_attr" "fg=$black,bg=$green"
set "@prefix_highlight_output_prefix" "  "

time_format="%R"
date_format="%d/%m/%Y"

set "status-right" "#[fg=$white,bg=$black,nounderscore,noitalics]${time_format}  ${date_format} #[fg=$green,bg=$black,nobold,nounderscore,noitalics]#[fg=$black,bg=$green,bold] #h #[fg=$orange, bg=$green]#[fg=$red,bg=$orange]"
set "status-left" "#[fg=$black,bg=$green,bold] #S #{prefix_highlight}#[fg=$green,bg=$black,nobold,nounderscore,noitalics]"

set "window-status-format" "#[fg=$black,bg=$black,nobold,nounderscore,noitalics]#[fg=$white,bg=$black] #I  #W #[fg=$black,bg=$black,nobold,nounderscore,noitalics]"
set "window-status-current-format" "#[fg=$black,bg=$visual_grey,nobold,nounderscore,noitalics]#[fg=$white,bg=$visual_grey,nobold] #I  #W #[fg=$visual_grey,bg=$black,nobold,nounderscore,noitalics]"

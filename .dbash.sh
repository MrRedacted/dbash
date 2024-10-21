function set_vars {
  ## icon list (icons from Nerd Fonts)
  local glider='⠠⠵ '
  local lambda='λ '
  local debian=' '
  local arch=' '
  local fedora=' '
  local mint=' '
  local kali=' '
  local ferris=' '
  local neovim=' '
  local nix=' '
  local tux=' '
  local rasp=' '
  local cinnamon=' '
  local endeavour=' '
  local locos=' '
  local qubes=' '
  local tor=' '
  local tails=' '
  local gopher=' '
  local golang=' '
  local zig=' '
  local javascript=' '
  local bash=' '
  local html=' '
  local clang=' '
  local radio=' '
  local alma=' '
  local rocky=' '
  local plasma=' '

  ## CHANGE ICON AND COLOR SCHEME HERE
  ## set to an icon variable from above or a custom icon
  BASH_THEMER_ICON=$radio
  BASH_THEMER_COLOR_SCHEME='catppuccin_green'
}

function gruvbox {
  local color_orange='\[\033[38;5;208m\]'
  local color_yellow='\[\033[38;5;220m\]'
  local color_aqua='\[\033[38;5;114m\]'
  local color_blue='\[\033[38;5;109m\]'
  local color_normal='\[\033[0m\]'
  local get_status='$(last_status=$?; if [ $last_status -ne 0 ]; then echo " \[\033[38;5;196m\][$last_status]"; fi)'
  PS1="${color_aqua}╭─\u@\h ${color_yellow}in \w ${color_blue}\t${get_status}\n${color_aqua}╰${color_orange}${BASH_THEMER_ICON}${color_normal}"
}

function catppuccin_blue {
  local color_peach='\[\033[38;5;216m\]'
  local color_sky='\[\033[38;5;116m\]'
  local color_lavender='\[\033[38;5;147m\]'
  local color_blue='\[\033[38;5;111m\]'
  local color_normal='\[\033[0m\]'
  local get_status='$(last_status=$?; if [ $last_status -ne 0 ]; then echo " \[\033[38;5;211m\][$last_status]"; fi)'
  PS1="${color_blue}╭─\u@\h ${color_sky}in \w ${color_lavender}\t${get_status}\n${color_blue}╰${color_peach}${BASH_THEMER_ICON}${color_normal}"
}

function catppuccin_green {
  local color_peach='\[\033[38;5;216m\]'
  local color_yellow='\[\033[38;5;229m\]'
  local color_green='\[\033[38;5;157m\]'
  local color_blue='\[\033[38;5;111m\]'
  local color_normal='\[\033[0m\]'
  local get_status='$(last_status=$?; if [ $last_status -ne 0 ]; then echo " \[\033[38;5;211m\][$last_status]"; fi)'
  PS1="${color_green}╭─\u@\h ${color_yellow}in \w ${color_blue}\t${get_status}\n${color_green}╰${color_peach}${BASH_THEMER_ICON}${color_normal}"
}

function catppuccin_peach {
  local color_peach='\[\033[38;5;216m\]'
  local color_mauve='\[\033[38;5;183m\]'
  local color_teal='\[\033[38;5;116m\]'
  local color_blue='\[\033[38;5;111m\]'
  local color_normal='\[\033[0m\]'
  local get_status='$(last_status=$?; if [ $last_status -ne 0 ]; then echo " \[\033[38;5;211m\][$last_status]"; fi)'
  PS1="${color_peach}╭─\u@\h ${color_mauve}in \w ${color_blue}\t${get_status}\n${color_peach}╰${color_teal}${BASH_THEMER_ICON}${color_normal}"
}

function term_colors {
  local color_cyan='\[\033[38;5;6m\]'
  local color_yellow='\[\033[38;5;3m\]'
  local color_green='\[\033[38;5;2m\]'
  local color_blue='\[\033[38;5;4m\]'
  local color_purple='\[\033[38;5;5m\]'
  local color_normal='\[\033[0m\]'
  local get_status='$(last_status=$?; if [ $last_status -ne 0 ]; then echo " \[\033[38;5;1m\][$last_status]"; fi)'
  PS1="${color_green}╭─\u@\h ${color_yellow}in \w ${color_blue}\t${get_status}\n${color_green}╰${color_cyan}${BASH_THEMER_ICON}${color_normal}"
}

function bright_term_colors {
  local color_cyan='\[\033[38;5;14m\]'
  local color_yellow='\[\033[38;5;11m\]'
  local color_green='\[\033[38;5;10m\]'
  local color_blue='\[\033[38;5;12m\]'
  local color_purple='\[\033[38;5;13m\]'
  local color_normal='\[\033[0m\]'
  local get_status='$(last_status=$?; if [ $last_status -ne 0 ]; then echo " \[\033[38;5;9m\][$last_status]"; fi)'
  PS1="${color_green}╭─\u@\h ${color_yellow}in \w ${color_blue}\t${get_status}\n${color_green}╰${color_cyan}${BASH_THEMER_ICON}${color_normal}"
}

set_vars
case $BASH_THEMER_COLOR_SCHEME in
'gruvbox')
  gruvbox
  ;;
'catppuccin_peach')
  catppuccin_peach
  ;;
'catppuccin_green')
  catppuccin_green
  ;;
'catppuccin_blue')
  catppuccin_blue
  ;;
'term_colors')
  term_colors
  ;;
'bright_term_colors')
  bright_term_colors
  ;;
esac

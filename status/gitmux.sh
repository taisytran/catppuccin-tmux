# require: https://github.com/arl/gitmux

show_gitmux() {
  local index=$1
  local icon=$(get_tmux_option "@catppuccin_gitmux_icon" "")
  local color=$(get_tmux_option "@catppuccin_gitmux_color" "$thm_cyan")
  local text=$(get_tmux_option "@catppuccin_gitmux_text" '#(gitmux -cfg $HOME/.gitmux.conf "#{pane_current_path}")')

  local module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}

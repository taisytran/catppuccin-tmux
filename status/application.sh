show_application() {
  local index=$1
  local icon=$(get_tmux_option "@catppuccin_application_icon" "󰲋 ")
  local color=$(get_tmux_option "@catppuccin_application_color" "$thm_magenta")
  local text=$(get_tmux_option "@catppuccin_application_text" "#{pane_current_command}")

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}

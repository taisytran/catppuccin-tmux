# require: https://github.com/tmux-plugins/tmux-cpu

show_ram() {
  local index=$1
  local icon=$(get_tmux_option "@catppuccin_ram_icon" " ")
  local color=$(get_tmux_option "@catppuccin_ram_color" "$thm_green")
  local text=$(get_tmux_option "@catppuccin_ram_text" "#{ram_percentage} ")

  local module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}

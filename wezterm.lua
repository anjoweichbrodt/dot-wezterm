local wezterm = require("wezterm")

return {
	color_scheme = "Tokyo Night Storm",
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 20,
	},
	font = wezterm.font("Inconsolata"),
	font_size = 15,
	window_close_confirmation = "NeverPrompt",
	win32_system_backdrop = "Acrylic",
	colors = {
		foreground = "#dcdfe4",
		-- background = "#282c34",
		background = "#31363b",
		cursor_bg = "#1abc9c",
		cursor_border = "#a3b3cc",
		cursor_fg = "#dcdfe4",
		--selection_bg = "#474e5d",
		--selection_fg = "#dcdfe4",
		selection_bg = "#fffacd",
		selection_fg = "#000000",
		ansi = { "#282c34", "#dc7671", "#1abc9c", "#ead5a1", "#779ab1", "#bc9eae", "#56b6c2", "#dcdfe4" },
		brights = { "#282c34", "#dc7671", "#1abc9c", "#ead5a1", "#779ab1", "#bc9eae", "#56b6c2", "#dcdfe4" },
	},

	leader = { key = "b", mods = "CTRL", timeout_milliseconds = 1000 },
	keys = {
		{ mods = "LEADER", key = "-", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ mods = "LEADER", key = "=", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ mods = "LEADER", key = "j", action = wezterm.action.ActivatePaneDirection("Down") },
		{ mods = "LEADER", key = "k", action = wezterm.action.ActivatePaneDirection("Up") },
		{ mods = "LEADER", key = "h", action = wezterm.action.ActivatePaneDirection("Left") },
		{ mods = "LEADER", key = "l", action = wezterm.action.ActivatePaneDirection("Right") },
		{ mods = "LEADER", key = "c", action = wezterm.action.CloseCurrentPane({ confirm = false }) },
	},
}

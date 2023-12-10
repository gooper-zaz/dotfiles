local wezterm = require("wezterm")

return {
	-- behaviours
	automatically_reload_config = true,
	check_for_updates = false,
	exit_behavior = "CloseOnCleanExit", -- if the shell program exited with a successful status
	status_update_interval = 1000,
	-- width && height
	initial_cols = 120,
	initial_rows = 32,

	-- colorscheme
	color_scheme = "Catppuccin Mocha",
	-- font
	font = wezterm.font("JetBrainsMono Nerd Font Mono"),
	font_size = 14,

	freetype_load_target = "Normal",
	freetype_render_target = "Normal",
	-- 默认终端
	default_prog = { [[pwsh]], "-l" },

	animation_fps = 60,

	-- scrool bar
	enable_scroll_bar = true,
	min_scroll_bar_height = "3cell",
	colors = {
		scrollbar_thumb = "#454545",
	},
	scrollback_lines = 5000,

	-- cursor
	default_cursor_style = "BlinkingBlock",
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",
	cursor_blink_rate = 700,

	-- tab bar
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = false,
	use_fancy_tab_bar = false,
	tab_max_width = 25,
	show_tab_index_in_tab_bar = true,
	switch_to_last_active_tab_when_closing_tab = true,

	-- window
	window_decorations = "TITLE | RESIZE",
	-- integrated_title_button_style = "Windows",
	-- integrated_title_button_color = "auto",
	-- integrated_title_button_alignment = "Right",
	window_padding = {
		left = 5,
		right = 10,
		top = 12,
		bottom = 7,
	},
	window_close_confirmation = "AlwaysPrompt",
	window_frame = {
		active_titlebar_bg = "#090909",
	},
	inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },

	-- paste behaviours
	canonicalize_pasted_newlines = "CarriageReturn",

	hyperlink_rules = {
		-- Matches: a URL in parens: (URL)
		{
			regex = "\\((\\w+://\\S+)\\)",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in brackets: [URL]
		{
			regex = "\\[(\\w+://\\S+)\\]",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in curly braces: {URL}
		{
			regex = "\\{(\\w+://\\S+)\\}",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in angle brackets: <URL>
		{
			regex = "<(\\w+://\\S+)>",
			format = "$1",
			highlight = 1,
		},
		-- Then handle URLs not wrapped in brackets
		{
			regex = "\\b\\w+://\\S+[)/a-zA-Z0-9-]+",
			format = "$0",
		},
		-- implicit mailto link
		{
			regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
			format = "mailto:$0",
		},
	},
}

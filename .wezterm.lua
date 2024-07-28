-- init stuff, get wezterm module
local wezterm = require 'wezterm'

function pxToPt(px, dpi)
	return (px / dpi) * 72
end

function init()	
	-- get config
	local config = wezterm.config_builder()

	-- set color scheme and font, its size and line height
	config.color_scheme = 'catppuccin-macchiato'
	config.font = wezterm.font_with_fallback { 
		'Terminus (TTF)',
		'Unifont'
	}
	config.font_size = pxToPt(14, config.dpi == nil and 96 or config.dpi)
	config.line_height = 1.0

	-- set various window options
	config.enable_wayland = true
	config.use_fancy_tab_bar = false
	config.window_background_opacity = 0.55
	config.use_resize_increments = true
	config.window_padding = {
		left   = 0,
		right  = 0,
		top    = 0,
		bottom = 0,
	}

	return config
end

return init()

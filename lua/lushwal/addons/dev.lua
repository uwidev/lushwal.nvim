-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		Black({ fg = colors.color0 }),
		Red({ fg = colors.color1 }),
		Green({ fg = colors.color2 }),
		Yellow({ fg = colors.color3 }),
		Blue({ fg = colors.color4 }),
		Magenta({ fg = colors.color5 }),
		Cyan({ fg = colors.color6 }),
		White({ fg = colors.color7 }),
		BrightBlack({ fg = colors.color8 }),
		BrightRed({ fg = colors.color9 }),
		BrightGreen({ fg = colors.color10 }),
		BrightYellow({ fg = colors.color11 }),
		BrightBlue({ fg = colors.color12 }),
		BrightMagenta({ fg = colors.color13 }),
		BrightCyan({ fg = colors.color14 }),
		BrightWhite({ fg = colors.color15 }),

		-- Special colors
		Subtle10({ fg = colors.subtle10 }),
		Subtle25({ fg = colors.subtle25 }),
		Subtle33({ fg = colors.subtle33 }),
		Subtle50({ fg = colors.subtle50 }),
		Subtle66({ fg = colors.subtle66 }),
		Subtle75({ fg = colors.subtle75 }),

		-- Subtle variants, blend with background
		SubtleRed({ fg = colors.subtle_red }),
		SubtleGreen({ fg = colors.subtle_green }),
		SubtleYellow({ fg = colors.subtle_yellow }),
		SubtleBlue({ fg = colors.subtle_blue }),
		SubtleMagenta({ fg = colors.subtle_magenta }),
		SubtleCyan({ fg = colors.subtle_cyan }),

		-- Harsh variants, blend with bright black
		HarshRed({ fg = colors.harsh_red }),
		HarshGreen({ fg = colors.harsh_green }),
		HarshYellow({ fg = colors.harsh_yellow }),
		HarshBlue({ fg = colors.harsh_blue }),
		HarshMagenta({ fg = colors.harsh_magenta }),
		HarshCyan({ fg = colors.harsh_cyan }),
	}
	-- selene: deny(undefined_variable)
end)

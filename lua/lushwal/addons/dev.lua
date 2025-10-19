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
		Subtle1({ fg = colors.subtle1 }),
		Subtle2({ fg = colors.subtle2 }),
		Subtle3({ fg = colors.subtle3 }),
		Subtle5({ fg = colors.subtle5 }),
		Subtle10({ fg = colors.subtle10 }),
		-- Subtle25({ fg = colors.subtle25 }),
		-- Subtle33({ fg = colors.subtle33 }),
		-- Subtle50({ fg = colors.subtle50 }),
		-- Subtle66({ fg = colors.subtle66 }),
		-- Subtle75({ fg = colors.subtle75 }),

		-- Subtle variants, blend with background
		SubtleRed({ fg = colors.subtle_red }),
		SubtleGreen({ fg = colors.subtle_green }),
		SubtleYellow({ fg = colors.subtle_yellow }),
		SubtleBlue({ fg = colors.subtle_blue }),
		SubtleMagenta({ fg = colors.subtle_magenta }),
		SubtleCyan({ fg = colors.subtle_cyan }),

		-- Dim variants, primary color dominates
		BackRed({ fg = colors.back_red }),
		BackGreen({ fg = colors.back_green }),
		BackYellow({ fg = colors.back_yellow }),
		BackBlue({ fg = colors.back_blue }),
		BackMagenta({ fg = colors.back_magenta }),
		BackCyan({ fg = colors.back_cyan }),

		-- colors mixed with background
		RedBack({ fg = colors.red_back }),
		GreenBack({ fg = colors.green_back }),
		YellowBack({ fg = colors.yellow_back }),
		BlueBack({ fg = colors.blue_back }),
		MagentaBack({ fg = colors.magenta_back }),
		CyanBack({ fg = colors.cyan_back }),

		-- Harsh variants, blend with bright black
		RedHarsh({ fg = colors.red_harsh }),
		GreenHarsh({ fg = colors.green_harsh }),
		YellowHarsh({ fg = colors.yellow_harsh }),
		BlueHarsh({ fg = colors.blue_harsh }),
		MagentaHarsh({ fg = colors.magenta_harsh }),
		CyanHarsh({ fg = colors.cyan_harsh }),

		Grey({ fg = colors.grey }),
		BrightGrey({ fg = colors.br_grey }),
	}
	-- selene: deny(undefined_variable)
end)

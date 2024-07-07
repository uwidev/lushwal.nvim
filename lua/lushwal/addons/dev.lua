-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		DevColor0({ fg = colors.color0 }),
		DevColor1({ fg = colors.color1 }),
		DevColor2({ fg = colors.color2 }),
		DevColor3({ fg = colors.color3 }),
		DevColor4({ fg = colors.color4 }),
		DevColor5({ fg = colors.color5 }),
		DevColor6({ fg = colors.color6 }),
		DevColor7({ fg = colors.color7 }),
		DevColor8({ fg = colors.color8 }),
		DevColor9({ fg = colors.color9 }),
		DevColor10({ fg = colors.color10 }),
		DevColor11({ fg = colors.color11 }),
		DevColor12({ fg = colors.color12 }),
		DevColor13({ fg = colors.color13 }),
		DevColor14({ fg = colors.color14 }),
		DevColor15({ fg = colors.color15 }),
	}
	-- selene: deny(undefined_variable)
end)

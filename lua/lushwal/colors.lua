-- luacheck: globals vim
local hsl = require("lush").hsl

local config = require("lushwal").config

-- Decode some JSON:
local json_decode = function(data)
	return pcall(vim.fn.json_decode, data)
end

-- Locate pywal cache:
local function generate_colors()
	local ok, colors = json_decode(vim.fn.readfile(config.wal_path))

	-- Generate Color Variables:
	if ok then
		local foreground = hsl(colors.special.foreground)

		local background = not require("lushwal").config.transparent_background and hsl(colors.special.background)
			or nil

		-- local background = hsl("#020100")
	
		print(background)

		local cursor = hsl(colors.special.cursor)
		local color0 = hsl(colors.colors.color0)
		local color1 = hsl(colors.colors.color1)
		local color2 = hsl(colors.colors.color2)
		local color3 = hsl(colors.colors.color3)
		local color4 = hsl(colors.colors.color4)
		local color5 = hsl(colors.colors.color5)
		local color6 = hsl(colors.colors.color6)
		local color7 = hsl(colors.colors.color7)
		local color8 = hsl(colors.colors.color8)
		local color9 = hsl(colors.colors.color9)
		local color10 = hsl(colors.colors.color10)
		local color11 = hsl(colors.colors.color11)
		local color12 = hsl(colors.colors.color12)
		local color13 = hsl(colors.colors.color13)
		local color14 = hsl(colors.colors.color14)
		local color15 = hsl(colors.colors.color15)
		local grey = background.mix(foreground, 50)

		return {
			foreground = foreground,
			background = background,
			cursor = cursor,
			color0 = color0,
			color1 = color1,
			color2 = color2,
			color3 = color3,
			color4 = color4,
			color5 = color5,
			color6 = color6,
			color7 = color7,
			color8 = color8,
			color9 = color9,
			color10 = color10,
			color11 = color11,
			color12 = color12,
			color13 = color13,
			color14 = color14,
			color15 = color15,
			black = color0,
			red = color1,
			green = color2,
			yellow = color3,
			blue = color4,
			magenta = color5,
			cyan = color6,
			white = color7,
			br_black = color8,
			br_red = color9,
			br_green = color10,
			br_yellow = color11,
			br_blue = color12,
			br_magenta = color13,
			br_cyan = color14,
			br_white = color15,

			-- Special colors
			-- Be careful of mixing 0 and background, might be the same color
			subtle1 = background.mix(color7, 1),
			subtle2 = background.mix(color7, 2),
			subtle3 = background.mix(color7, 3),
			subtle5 = background.mix(color7, 5),
			subtle10 = background.mix(color7, 10),

			-- background mixed with colors
			-- somewhat perceptual difference from background
			back_red = background.mix(color1, 33),
			back_green = background.mix(color2, 33),
			back_yellow = background.mix(color3, 33),
			back_blue = background.mix(color4, 33),
			back_magenta = background.mix(color5, 33),
			back_cyan = background.mix(color6, 33),
			back_white = background.mix(color7, 33),

			back_color1 = background.mix(color1, 33),
			back_color2 = background.mix(color2, 33),
			back_color3 = background.mix(color3, 33),
			back_color4 = background.mix(color4, 33),
			back_color5 = background.mix(color5, 33),
			back_color6 = background.mix(color6, 33),
			back_color7 = background.mix(color7, 33),

			-- colors mixed with background
			-- more perceptual difference from background
			black_back = color0.mix(background, 33),
			red_back = color1.mix(background, 33),
			green_back = color2.mix(background, 33),
			yellow_back = color3.mix(background, 33),
			blue_back = color4.mix(background, 33),
			magenta_back = color5.mix(background, 33),
			cyan_back = color6.mix(background, 33),
			white_back = color7.mix(background, 33),

			color0_back = color0.mix(background, 33),
			color1_back = color1.mix(background, 33),
			color2_back = color2.mix(background, 33),
			color3_back = color3.mix(background, 33),
			color4_back = color4.mix(background, 33),
			color5_back = color5.mix(background, 33),
			color6_back = color6.mix(background, 33),
			color7_back = color7.mix(background, 33),

			-- white with a hint of color
			-- same pop as white, but just flavored
			white_black = color7.mix(color0, 33),
			white_red = color7.mix(color1, 33),
			white_green = color7.mix(color2, 33),
			white_yellow = color7.mix(color3, 33),
			white_blue = color7.mix(color4, 33),
			white_magenta = color7.mix(color5, 33),
			white_cyan = color7.mix(color6, 33),

			white_color0 = color7.mix(color0, 33),
			white_color1 = color7.mix(color1, 33),
			white_color2 = color7.mix(color2, 33),
			white_color3 = color7.mix(color3, 33),
			white_color4 = color7.mix(color4, 33),
			white_color5 = color7.mix(color5, 33),
			white_color6 = color7.mix(color6, 33),

			-- color brightened with white
			-- standout more...?
			black_white = color0.mix(color7, 33),
			red_white = color1.mix(color7, 33),
			green_white = color2.mix(color7, 33),
			yellow_white = color3.mix(color7, 33),
			blue_white = color4.mix(color7, 33),
			magenta_white = color5.mix(color7, 33),
			cyan_white = color6.mix(color7, 33),

			color0_white = color0.mix(color7, 33),
			color1_white = color1.mix(color7, 33),
			color2_white = color2.mix(color7, 33),
			color3_white = color3.mix(color7, 33),
			color4_white = color4.mix(color7, 33),
			color5_white = color5.mix(color7, 33),
			color6_white = color6.mix(color7, 33),

			-- colors desaturated with "grey"
			-- grey is foreground + background mix 50
			-- supposed to have less emphasis and pop
			red_grey = color1.mix(grey, 33),
			green_grey = color2.mix(grey, 33),
			yellow_grey = color3.mix(grey, 33),
			blue_grey = color4.mix(grey, 33),
			magenta_grey = color5.mix(grey, 33),
			cyan_grey = color6.mix(grey, 33),

			color1_grey = color1.mix(grey, 33),
			color2_grey = color2.mix(grey, 33),
			color3_grey = color3.mix(grey, 33),
			color4_grey = color4.mix(grey, 33),
			color5_grey = color5.mix(grey, 33),
			color6_grey = color6.mix(grey, 33),

			-- Harsh variants, blend with bright black
			red_harsh = color8.mix(color9, 70).saturate(10).darken(40),
			green_harsh = color8.mix(color10, 70).saturate(10).darken(40),
			yellow_harsh = color8.mix(color11, 70).saturate(10).darken(40),
			blue_harsh = color8.mix(color12, 70).saturate(10).darken(40),
			magenta_harsh = color8.mix(color13, 70).saturate(10).darken(40),
			cyan_harsh = color8.mix(color14, 70).saturate(10).darken(40),

			color9_harsh = color8.mix(color9, 70).saturate(10).darken(40),
			color10_harsh = color8.mix(color10, 70).saturate(10).darken(40),
			color11_harsh = color8.mix(color11, 70).saturate(10).darken(40),
			color12_harsh = color8.mix(color12, 70).saturate(10).darken(40),
			color13_harsh = color8.mix(color13, 70).saturate(10).darken(40),
			color14_harsh = color8.mix(color14, 70).saturate(10).darken(40),

			-- Else...
			grey = grey,
			back_grey = grey.mix(background, 50), -- Darker grey
			br_grey = grey.mix(foreground, 50), -- Mid-grey

			orange = color1.mix(color3, 50),
			purple = color4.rotate(65).li(45), -- Purple
			pink = color4.rotate(65).li(45).mix(color5, 50), -- Pink
			amaranth = color1.mix(color4, 34).saturate(46).darken(5),
			brown = color1.mix(color5, 15), -- Brown
		}
	else
		return nil
	end
end

return generate_colors

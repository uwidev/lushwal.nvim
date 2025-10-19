-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		DiagnosticError({ fg = colors.color6 }),
		DiagnosticWarn({ fg = colors.color1_back }),
		DiagnosticInfo({ fg = colors.back_color6 }),
		DiagnosticHint({ fg = colors.back_color6 }),
		DiagnosticUnderlineError({ DiagnosticError, sp = DiagnosticError.fg, gui = "underline" }),
		DiagnosticUnderlineWarn({ DiagnosticWarn, sp = DiagnosticWarn.fg, gui = "underline" }),
		DiagnosticUnderlineInfo({ DiagnosticInfo, sp = DiagnosticInfo.fg, gui = "underline" }),
		DiagnosticUnderlineHint({ DiagnosticHint, sp = DiagnosticHint.fg, gui = "underline" }),
	}
	-- selene: deny(undefined_variable)
end)

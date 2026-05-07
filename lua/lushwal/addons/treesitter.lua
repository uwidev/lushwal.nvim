-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors

return lush(function(injected_functions)
	local sym = injected_functions.sym
	-- selene: allow(undefined_variable)
	return {
		-- verbs
		sym("@function")({ fg = colors.color5 }),
		sym("@function.builtin")({ fg = colors.color5 }),
		sym("@function.macro")({ fg = colors.color5 }),
		sym("@constant.macro")({ fg = colors.color5 }),

		-- nouns
		sym("@variable")({ fg = colors.color3 }),
		sym("@variable.builtin")({ fg = colors.color3 }),
		sym("@property")({ fg = colors.color3 }),

		-- raw data
		sym("@string")({ fg = colors.color2 }),
		sym("@string.escape")({ fg = colors.color2 }),
		sym("@string.regex")({ fg = colors.color2 }),
		sym("@string.special")({ fg = colors.color2 }),

		sym("@number")({ fg = colors.color2 }),
		sym("@number.float")({ fg = colors.color2 }),

		sym("@constant")({ fg = colors.color2 }),
		sym("@constant.builtin")({ fg = colors.color2 }),
		sym("@boolean")({ fg = colors.color2 }),

		sym("@attribute")({ fg = colors.color4, gui = "bold" }),

		sym("@parameter")({ fg = colors.color4 }),

		sym("@type")({ fg = colors.color2 }),
		sym("@type.builtin")({ fg = colors.color2 }),
		sym("@type.definition")({ fg = colors.color2 }),

		-- context
		sym("@comment")({ fg = colors.color6, gui = "italic" }),
		sym("@string.documentation")({ fg = colors.color6 }),

		sym("@namespace")({ fg = colors.color2 }),
		sym("@operator")({ fg = colors.color2 }),
		sym("@preproc")({ fg = colors.color2 }),

		-- puncuation
		sym("@keyword")({ fg = colors.color1 }),
		sym("@keyword.function")({ fg = colors.color1 }),
		sym("@keyword.operator")({ fg = colors.color1 }),

		sym("@tag")({ fg = colors.color1 }),
		sym("@tag.attribute")({ fg = colors.color1 }),
		sym("@tag.delimiter")({ fg = colors.color1 }),

		sym("@punctuation.bracket")({ fg = colors.color3 }),
		sym("@punctuation.delimiter")({ fg = colors.color3 }),
		sym("@punctuation.special")({ fg = colors.color3, gui = "bold" }),

		-- other
		sym("@text")({ fg = colors.white }),
		sym("@text.bold")({ gui = "bold", fg = colors.white }),
		sym("@text.danger")({ fg = colors.white }),
		sym("@text.diff.add")({ fg = colors.white, bg = colors.br_black, gui = "bold" }),
		sym("@text.diff.delete")({ fg = colors.white, bg = colors.br_black, gui = "bold" }),
		sym("@text.emphasis")({ gui = "italic", fg = colors.white }),
		sym("@text.environment")({ fg = colors.white }),
		sym("@text.environment.name")({ fg = colors.white }),
		sym("@text.literal")({ fg = colors.white }),
		sym("@text.math")({ fg = colors.white }),
		sym("@text.note")({ fg = colors.white }),
		sym("@text.reference")({ fg = colors.white }),
		sym("@text.strike")({ gui = "strikethrough" }),
		sym("@text.title")({ fg = colors.white, gui = "bold" }),
		sym("@text.todo")({ fg = colors.color15, bg = colors.background }),
		sym("@text.underline")({ gui = "underline" }),
		sym("@text.uri")({ gui = "underline", bg = colors.white }),

		sym("@character")({ fg = colors.white }),
		sym("@character.special")({ fg = colors.white }),
		sym("@conditional")({ fg = colors.white }),

		-- sym("@constructor")({ fg = colors.white }),
		sym("@debug")({ fg = colors.white }),
		sym("@define")({ fg = colors.white }),
		sym("@exception")({ fg = colors.white }),
		sym("@field")({ fg = colors.white }),

		sym("@include")({ fg = colors.white }),

		sym("@label")({ fg = colors.white }),
		sym("@method")({ fg = colors.white }),
		sym("@none")({ bg = "NONE", fg = "NONE" }),

		sym("@repeat")({ fg = colors.white }),
		sym("@storageclass")({ fg = colors.white }),
		sym("@symbol")({ fg = colors.white }),
	}
	-- selene: deny(undefined_variable)
end)

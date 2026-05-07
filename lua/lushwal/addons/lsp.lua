-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors

return lush(function(injected_functions)
	local sym = injected_functions.sym
	-- selene: allow(undefined_variable)
	return {
		-- sym("@lsp.type.variable")({ fg = colors.back_cyan }),
		sym("@lsp.type.class")({ fg = colors.color7 }),

		sym("@lsp.type.namespace")({ fg = colors.color2 }),

		sym("@lsp.mod.readonly")({ fg = colors.color3 }),

		sym("@lsp.typemod.function.declaration")({ fg = colors.color7 }),
		sym("@lsp.typemod.variable.declaration")({ fg = colors.color3 }),
		sym("@lsp.type.struct")({ fg = colors.color7 }),

		-- sym("@lsp.typemod.method.declaration")({ gui = "bold" }),
		-- sym("@lsp.typemod.function.declaration")({ gui = "bold" }),
		-- sym("@lsp.typemod.class.declaration")({ gui = "bold" }),

		sym("@lsp.typemod.selfParameter.declaration")({ fg = colors.color4 }),
		sym("@lsp.typemod.parameter.declaration")({ fg = colors.color4 }),
		sym("@lsp.type.parameter")({ fg = colors.color4 }),
	}
	-- selene: deny(undefined_variable)
end)

-- luacheck: globals vim
-- luacheck: ignore 113
-- Implementation referenced using https://github.com/rockyzhang24/arctic.nvim/blob/main/lua/lush_theme/arctic.lua
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function(injected_functions)
	-- selene: allow(undefined_variable)
	local sym = injected_functions.sym
	return {
		sym("@neorg.headings.1.title.norg")({ fg = colors.color14, gui = "bold" }), -- headings
		sym("@neorg.headings.2.title.norg")({ fg = colors.color13, gui = "bold" }),
		sym("@neorg.headings.3.title.norg")({ fg = colors.color12, gui = "bold" }),
		sym("@neorg.headings.4.title.norg")({ fg = colors.color11, gui = "bold" }),
		sym("@neorg.headings.5.title.norg")({ fg = colors.color10, gui = "bold" }),
		sym("@neorg.headings.6.title.norg")({ fg = colors.color9, gui = "bold" }),

		sym("@markup.strong")({ fg = colors.color2, gui = "bold" }), -- bold
		sym("@markup.italic")({ fg = colors.color3, gui = "italic" }), -- emphasis
		sym("@markup.strikethrough")({ fg = colors.color7, gui = "strikethrough" }), -- strikethrough
		sym("@markup.underline")({ fg = colors.color7, gui = "underline" }), -- underlined

		sym("@neorg.quotes.1.content.norg")({ fg = colors.color6 }), -- quotes
		sym("@neorg.quotes.2.content.norg")({ fg = colors.color5 }),
		sym("@neorg.quotes.3.content.norg")({ fg = colors.color4 }),
		sym("@neorg.quotes.4.content.norg")({ fg = colors.color3 }),
		sym("@neorg.quotes.5.content.norg")({ fg = colors.color2 }),
		sym("@neorg.quotes.6.content.norg")({ fg = colors.color1 }),

		sym("@neorg.definitions.title.norg")({ fg = colors.color14, gui = "bold" }), -- definition word
		sym("@neorg.definitions.content.norg")({ fg = colors.color6, gui = "italic" }), -- definition itself

		sym("@markup.link")({ fg = colors.color6 }), -- text references, footnotes, citations, etc.
		sym("@markup.link.label")({ sym("@markup.link") }), -- non-url links
		sym("@markup.link.url")({ sym("@markup.link") }), -- url links in markup

		sym("@neorg.markup.verbatim.norg")({
			fg = colors.foreground.darken(30).desaturate(33),
			bg = colors.background.lighten(5).desaturate(66),
		}), -- inline

		sym("@markup.list")({ fg = colors.color4 }), -- list markers
		-- sym("@markup.list.checked") { }, -- checked todo-style list markers
		-- sym("@markup.list.unchecked") { }, -- unchecked todo-style list markers

		-- sym("@diff.plus")({ DiffTextAdded }), -- added text (for diff files)
		-- sym("@diff.minus")({ DiffTextDeleted }), -- deleted text (for diff files)
		-- sym("@diff.delta")({ DiffTextChanged }), -- changed text (for diff files)

		-- sym("@tag")({ fg = colors.color7 }), -- XML tag names
		-- sym("@tag.builtin")({ sym("@tag") }), -- builtin tag names (e.g. HTML5 tags)
		-- sym("@tag.attribute")({ fg = colors.color8 }), -- XML tag attributes
		-- sym("@tag.delimiter")({ fg = colors.color7 }), -- XML tag delimiters
	}
	-- selene: deny(undefined_variable)
end)

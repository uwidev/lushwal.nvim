pcall(vim.cmd, "packadd lush.nvim")
local lush = require("lush")

local colors = require("lushwal").colors
local scheme = lush(function()
	if not colors then
		return {}
	end
	-- selene: allow(undefined_variable)
	return {
		-- === Core UI / Editor ===
		Normal({ fg = colors.foreground, bg = colors.background }), -- TS: @none / fallback
		Bold({ Normal, gui = "bold" }), -- TS: bolded text
		Italic({ Normal, gui = "italic" }), -- TS: italicized text
		Underlined({ gui = "underline" }), -- TS: @text.underline
		Visual({ bg = colors.back_green, fg = colors.cyan_harsh }), -- TS: visual selection
		VisualNOS({ fg = colors.cyan }), -- TS: visual selection no selection
		Cursor({ fg = colors.background, bg = colors.foreground }), -- TS: cursor
		NonText({ fg = colors.br_grey }), -- TS: @text.special
		EndOfBuffer({ fg = colors.foreground, bg = colors.background }), -- TS: filler lines
		SignColumn({ fg = colors.grey, bg = colors.background }), -- TS: diagnostic signs
		LineNr({ fg = colors.br_grey, bg = colors.background }), -- TS: line numbers
		ColorColumn({ bg = colors.subtle2 }), -- TS: color column
		CursorColumn({ fg = colors.subtle2 }), -- TS: current column
		CursorLine({ bg = colors.subtle2, gui = "None" }), -- TS: current line
		CursorLineNr({ fg = colors.white, bg = colors.background, gui = "None" }), -- TS: current line number
		PMenu({ fg = colors.white, bg = colors.back_cyan }), -- TS: popup menu
		PMenuSel({ fg = colors.foreground, bg = colors.cyan_back }), -- TS: popup menu selection
		PmenuSbar({ fg = colors.grey }), -- TS: popup scrollbar
		PmenuThumb({ fg = colors.foreground }), -- TS: popup scrollbar thumb
		TabLine({ fg = colors.br_grey, bg = colors.br_black }), -- TS: inactive tab
		TabLineFill({ fg = colors.br_grey, bg = colors.br_black }), -- TS: tabline background
		TabLineSel({ fg = colors.green, bg = colors.br_black }), -- TS: active tab
		StatusLine({ fg = colors.white, bg = colors.magenta }), -- TS: statusline
		StatusLineNC({ fg = colors.grey, bg = colors.magenta }), -- TS: inactive statusline
		StatusLineTerm({ fg = colors.br_green, bg = colors.magenta }), -- TS: terminal statusline
		StatusLineTermNC({ fg = colors.br_yellow, bg = colors.magenta }), -- TS: inactive terminal statusline
		WinBar({ fg = colors.white, bg = colors.magenta, gui = "None" }), -- TS: window bar
		WinBarNC({ fg = colors.grey, bg = colors.magenta, gui = "None" }), -- TS: inactive window bar
		VertSplit({ fg = colors.white, bg = colors.background }), -- TS: vertical split
		WinSeparator({ VertSplit }), -- TS: same as VertSplit
		MoreMsg({ fg = colors.green }), -- TS: messages
		ModeMsg({ fg = colors.green }), -- TS: mode messages
		Question({ fg = colors.blue }), -- TS: prompts
		-- TooLong({ fg = colors.red }), -- TS: long lines || Does this even exist?
		WarningMsg({ fg = colors.red }), -- TS: warnings
		IncSearch({ fg = colors.br_black, bg = colors.green_harsh }), -- TS: incremental search
		Search({ fg = colors.br_grey, bg = colors.yellow_harsh }), -- TS: search highlight
		MatchParen({ fg = colors.foreground, bg = colors.red_harsh }), -- TS: matching parens
		WildMenu({ fg = colors.foreground, bg = colors.blue }), -- TS: completion menu
		Conceal({ fg = colors.back_color1, bg = colors.background }), -- TS: hidden text (tab char)
		Whitespace({ Conceal }), -- TS: spaces, tabs
		Title({ fg = colors.blue, gui = "bold" }), -- TS: @text.title
		Directory({ fg = colors.blue }), -- TS: directories
		Debug({ fg = colors.red }), -- TS: debug
		Error({ fg = colors.red, bg = colors.color6 }), -- TS: @error
		ErrorMsg({ fg = colors.red, bg = colors.background }), -- TS: @error
		Exception({ fg = colors.red }), -- TS: @exception
		Special({ fg = colors.color7 }), -- TS: constructor

		-- === Diff / Git ===
		DiffAdd({ fg = colors.green, bg = colors.back_color1, gui = "bold" }), -- TS: @text.diff.add
		DiffDelete({ fg = colors.background, bg = colors.back_color3, gui = "bold" }), -- TS: @text.diff.delete
		DiffChange({ fg = colors.back_white, bg = colors.back_color2 }), -- TS: @text.diff.change
		DiffText({ fg = colors.cyan, bg = colors.back_color4 }), -- TS: @text.diff.text
		DiffFile({ fg = colors.red, bg = colors.background }), -- TS: diff file
		DiffNewFile({ fg = colors.green, bg = colors.background }), -- TS: diff new file
		DiffLine({ fg = colors.blue, bg = colors.background }), -- TS: diff line
		DiffAdded({ DiffAdd }), -- alias
		DiffRemoved({ DiffDelete }), -- alias
		diffRemoved({ DiffDelete }), -- alias
		gitCommitOverflow({ fg = colors.red }), -- git commit overflow
		gitCommitSummary({ fg = colors.green }), -- git commit summary

		-- === Comments / Text / Todo ===
		Comment({ fg = colors.color6_back, gui = "italic" }), -- TS: @comment
		String({ fg = colors.color3_back }), -- TS: @string
		Number({ fg = colors.color3_back }), -- TS: @number
		Float({ fg = colors.color3_back }), -- TS: @number.float
		Boolean({ fg = colors.color3_back }), -- TS: @boolean
		Character({ fg = colors.white }), -- TS: @character
		Identifier({ fg = colors.color3 }), -- TS: @variable
		Function({ fg = colors.color7 }), -- TS: @function
		Statement({ fg = colors.color9 }), -- TS: @statement / @keyword.statement
		Conditional({ fg = colors.color9 }), -- TS: @conditional
		Repeat({ fg = colors.white }), -- TS: @repeat
		Keyword({ fg = colors.color9 }), -- TS: @keyword
		Operator({ fg = colors.color1 }), -- TS: @operator
		Label({ fg = colors.white }), -- TS: @label
		PreProc({ fg = colors.blue }), -- TS: @preproc
		StorageClass({ fg = colors.yellow }), -- TS: @storageclass
		Type({ fg = colors.color2 }), -- TS: @type
		Typedef({ fg = colors.color7 }), -- TS: @type.definition
		Structure({ fg = colors.color7 }), -- TS: @structure
		Constant({ fg = colors.color3_back }), -- TS: @constant
		Define({ fg = colors.color7 }), -- TS: @define
		Todo({ fg = colors.color6, bg = colors.background }), -- TS: @text.todo

		-- === Spell / Miscellaneous ===
		SpellBad({ gui = "underline", fg = colors.color6, sp = colors.color6 }),
		SpellLocal({ gui = "underline", fg = colors.color5, sp = colors.color6 }),
		SpellCap({ gui = "underline", fg = colors.color4, sp = colors.color4 }),
		SpellRare({ gui = "underline", fg = colors.color3, sp = colors.color3 }),

		-- === User / Misc ===
		-- User({ Normal }), -- TS: generic user-defined || No idea why lushwal creates this
	}

	-- selene: deny(undefined_variable)
end)

return scheme

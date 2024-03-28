local palette = require("flexoki.palette")

local M = {}

-- FIXME: update treesitter to newly syntax
M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["TSComment"] = { link = "Comment" },
		["TSAnnotation"] = { fg = c["bl_2"], bg = "NONE" },
		["TSAttribute"] = { fg = c.cr, bg = "NONE" },
		["TSConstructor"] = { fg = c.cr, bg = "NONE" },
		["TSType"] = { fg = c.cr, bg = "NONE" },
		["TSTypeBuiltin"] = { fg = c.ora, bg = "NONE" },
		["TSConditional"] = { fg = c.ye, bg = "NONE" },
		["TSException"] = { fg = c.pu, bg = "NONE" },
		["TSInclude"] = { fg = c.pu, bg = "NONE" },
		["TSKeywordReturn"] = { fg = c.pu, bg = "NONE" },
		["TSKeyword"] = { fg = c.pu, bg = "NONE" },
		["TSKeywordFunction"] = { fg = c.pu, bg = "NONE" },
		["TSLabel"] = { fg = c.bl, bg = "NONE" },
		["TSNamespace"] = { fg = c.cr, bg = "NONE" },
		["TSRepeat"] = { fg = c.ye, bg = "NONE" },
		["TSConstant"] = { fg = c.ora, bg = "NONE" },
		["TSConstBuiltin"] = { fg = c.ora, bg = "NONE" },
		["TSFloat"] = { fg = c.ora, bg = "NONE" },
		["TSNumber"] = { fg = c.ora, bg = "NONE" },
		["TSBoolean"] = { fg = c.ora, bg = "NONE" },
		["TSCharacter"] = { fg = c.gr, bg = "NONE" },
		["TSError"] = { fg = c.re_2, bg = "NONE" },
		["TSFunction"] = { fg = c["bl_2"], bg = "NONE" },
		["TSFuncBuiltin"] = { fg = c["bl_2"], bg = "NONE" },
		["TSMethod"] = { fg = c["bl_2"], bg = "NONE" },
		["TSConstMacro"] = { fg = c.ora, bg = "NONE" },
		["TSFuncMacro"] = { fg = c["bl_2"], bg = "NONE" },
		["TSVariable"] = { fg = c.bl, bg = "NONE" },
		["TSVariableBuiltin"] = { fg = c.re, bg = "NONE" },
		["TSProperty"] = { fg = c.re, bg = "NONE" },
		["TSField"] = { fg = c.fg, bg = "NONE" },
		["TSParameter"] = { fg = c.re, bg = "NONE" },
		["TSParameterReference"] = { fg = c.re, bg = "NONE" },
		["TSSymbol"] = { fg = c.bl, bg = "NONE" },
		["TSText"] = { fg = c.alt_fg, bg = "NONE" },
		["TSOperator"] = { fg = c.alt_fg, bg = "NONE" },
		["TSPunctDelimiter"] = { fg = c.alt_fg, bg = "NONE" },
		["TSTagDelimiter"] = { fg = c.alt_fg, bg = "NONE" },
		["TSTagAttribute"] = { fg = c.ora, bg = "NONE" },
		["TSPunctBracket"] = { fg = c.alt_fg, bg = "NONE" },
		["TSPunctSpecial"] = { fg = c.pu, bg = "NONE" },
		["TSString"] = { fg = c.gr, bg = "NONE" },
		["TSStringRegex"] = { fg = c.gr, bg = "NONE" },
		["TSStringEscape"] = { fg = c.gr, bg = "NONE" },
		["TSTag"] = { fg = c["bl_2"], bg = "NONE" },
		["TSEmphasis"] = { fg = "NONE", bg = "NONE", italic = true },
		["TSUnderline"] = { fg = "NONE", bg = "NONE", underline = true },
		["TSTitle"] = { fg = c.fg, bg = "NONE" },
		["TSLiteral"] = { fg = c.ora, bg = "NONE" },
		["TSURI"] = { fg = c.ora, bg = "NONE", underline = true },
		["TSKeywordOperator"] = { fg = c.pu, bg = "NONE" },
		["TSStructure"] = { fg = c.bl, bg = "NONE" },
		["TSStrong"] = { fg = c["bl_2"], bg = "NONE", bold = true },
		["TSQueryLinterError"] = { fg = c.ora_2, bg = "NONE" },
		["TreesitterContext"] = { fg = "NONE", bg = c["ui_2"], sp = c["tx_2"], underline = true },
	}
end

return M

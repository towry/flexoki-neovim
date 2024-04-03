local palette = require("flexoki.palette")

local M = {}

---@param opts FlexokiOptions
M.groups = function(opts)
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["Normal"] = { fg = c["tx"], bg = c["bg"] },
		["NormalNC"] = { fg = "NONE", bg = "NONE" },
		["Underlined"] = { fg = "NONE", bg = "NONE", underline = true },
		["Bold"] = { fg = "NONE", bg = "NONE", bold = true },
		["Italic"] = { fg = "NONE", bg = "NONE", italic = true },

		["SpellBad"] = { fg = c["re_2"], bg = "NONE", underline = true },
		["SpellCap"] = { fg = c["ye"], bg = "NONE", underline = true },
		["SpellLocal"] = { fg = c["gr"], bg = "NONE", underline = true },
		["SpellRare"] = { fg = c["pu"], bg = "NONE", underline = true },

		["NonText"] = { fg = c["tx_3"], bg = "NONE" },
		["EndOfBuffer"] = { fg = "NONE", bg = "NONE" },

		["Search"] = { fg = c["tx"], bg = c["cy_2"] },
		["IncSearch"] = { fg = c["bg"], bg = c["cy_2"] },
		["Substitute"] = { fg = c["bg_2"], bg = c["cy"] },

		["DiffAdd"] = { bg = c["bg_2"], fg = c["gr"] },
		["DiffChange"] = { bg = c["bg_2"], fg = c["pu"] },
		["DiffDelete"] = { bg = c["bg_2"], fg = c["re"] },
		["DiffText"] = { bg = c["bg_2"], fg = c["bl_2"] },
		["diffAdded"] = { link = "DiffAdd" },
		["diffChanged"] = { link = "DiffChange" },
		["diffRemoved"] = { link = "DiffDelete" },
		["Added"] = { link = "DiffAdd" },
		["Changed"] = { link = "DiffChange" },
		["Removed"] = { link = "DiffDelete" },

		--#region Actual text highlighting

		["Comment"] = { fg = c["tx_3"], bg = "NONE", italic = false },

		["Constant"] = { fg = c["ye"], bg = "NONE" },
		["String"] = { fg = c["cy"], bg = "NONE" },
		["Character"] = { fg = c["cy"], bg = "NONE" },
		["Number"] = { fg = c["pu"], bg = "NONE" },
		["Boolean"] = { fg = c["ye"], bg = "NONE" },
		["Float"] = { fg = c["pu"], bg = "NONE" },

		["Identifier"] = { fg = c["bl"], bg = "NONE" },
		["Function"] = { fg = c["or"], bg = "NONE", italic = false },

		["Statement"] = { fg = "NONE", bg = "NONE" },
		["Conditional"] = { link = "Keyword" },
		["Repeat"] = { link = "Keyword" },
		["Label"] = { link = "Keyword" },
		["Operator"] = { fg = c["tx_2"], bg = "NONE" },
		["Keyword"] = { fg = c["gr"], bg = "NONE", italic = false },
		["Exception"] = { link = "Keyword" },

		["PreProc"] = { fg = c["ma"], bg = "NONE" },
		["Include"] = { fg = c["re"], bg = "NONE" },
		["Define"] = { fg = c["ma"], bg = "NONE" },
		["Macro"] = { fg = c["ma"], bg = "NONE" },
		["PreCondit"] = { fg = c["ma"], bg = "NONE" },

		["Type"] = { fg = c["gr"], bg = "NONE" },
		["StorageClass"] = { fg = c["or"], bg = "NONE" },
		["Structure"] = { fg = c["or"], bg = "NONE" },
		["Typedef"] = { fg = c["or"], bg = "NONE" },

		["SpecialComment"] = { fg = c["tx"], bg = "NONE" },
		["Special"] = { fg = c["tx_2"], bg = "NONE" },
		["SpecialChar"] = { fg = c["ma"], bg = "NONE" },
		["Tag"] = { fg = c["cy"], bg = "NONE" },
		["Debug"] = { fg = c["ma"], bg = "NONE" },
		["Delimiter"] = { link = "Special" },
		["Error"] = { fg = c["re"], bg = c["bg"], bold = true },
		["Todo"] = { fg = c["ma"], bg = "NONE", bold = true },

		--#endregion

		["SignColumn"] = { fg = "NONE", bg = "NONE" },

		["MsgArea"] = { fg = c["tx_2"], bg = c["bg"] },
		["ModeMsg"] = { fg = "NONE", bg = c["bg_2"] },
		["MsgSeparator"] = { fg = "NONE", bg = c["bg_2"] },

		-- Pop-up menu
		["Pmenu"] = { fg = c["tx_2"], bg = c["bg_2"], sp = "NONE", blend = 50 },
		["PmenuSel"] = { fg = c["tx"], bg = c["cy_2"] },
		["PmenuSbar"] = { fg = "NONE", bg = c["ui"] },
		["PmenuThumb"] = { fg = "NONE", bg = c["ui_3"] },

		["TabLine"] = { fg = c["tx_2"], bg = c["ui"] },
		["TabLineSel"] = { fg = c["tx"], bg = c["ui_3"] },
		["TabLineFill"] = { fg = c["line"], bg = c["ui"] },

		["StatusLine"] = { fg = c["tx_2"], bg = c["ui"] },
		["StatusLineNC"] = { fg = c["tx_2"], bg = c["ui"] },
		["StatusLineTerm"] = { fg = c["tx_2"], bg = c["ui_3"] },
		["StatusLineTermNC"] = { fg = c["tx_2"], bg = c["ui_3"] },

		["WinBar"] = { fg = c["tx"], bg = c["ui_3"] },
		["WinBarNC"] = { fg = c["tx_2"], bg = c["ui"] },

		["WildMenu"] = { fg = "NONE", bg = c["cy_2"] },
		["Folded"] = { fg = c["ui_2"], bg = c["alt_bg"] },
		["FoldColumn"] = { fg = c["ui_2"], bg = c["alt_bg"] },
		["LineNr"] = { fg = c["tx_3"], bg = "NONE" },
		["FloatBorder"] = { fg = c["tx_3"], bg = c["bg_2"] },
		["Whitespace"] = { fg = c["tx_3"], bg = "NONE" },
		["WinSeparator"] = { fg = c["ui"], bg = "NONE" },
		["WinSeparatorNC"] = { fg = c["ui_3"], bg = "NONE" },
		["NormalFloat"] = { fg = c["tx_2"], bg = c["bg_2"] },
		["WarningMsg"] = { fg = c["re"], bg = c["bg"] },
		["QuickFixLine"] = { fg = "NONE", bg = c["ui2_blue"] },

		-- The MatchWord groups don't actually exist, but we define them here
		-- to link to them in plugin specific files instead of redefining the
		-- same group multiple times
		["MatchWord"] = { fg = "NONE", bg = c["ui_2"] },
		["MatchParen"] = { fg = "NONE", bg = c["ui_2"] },
		["MatchWordCur"] = { fg = "NONE", bg = "NONE" },
		["MatchParenCur"] = { fg = "NONE", bg = "NONE" },

		["Conceal"] = { fg = "NONE", bg = "NONE" },
		["Directory"] = { fg = c["bl"], bg = "NONE" },

		["SpecialKey"] = { fg = c["blue"], bg = "NONE", bold = true },
		["Title"] = { fg = c["bl"], bg = "NONE", bold = true },
		["ErrorMsg"] = { fg = c["re_2"], bg = "NONE", bold = true },
		["MoreMsg"] = { fg = c["orange"], bg = "NONE" },
		["Question"] = { fg = c["orange"], bg = "NONE" },

		-- Cursor and selection related
		["Cursor"] = { fg = c["bg"], bg = c["tx"] },
		["lCursor"] = { fg = c["bg"], bg = c["tx"] },
		["CursorLine"] = { fg = "NONE", bg = c["bg_2"] },
		["CursorLineNr"] = { fg = c["tx"], bg = "NONE", bold = true },
		["CursorColumn"] = { fg = "NONE", bg = c["bg_2"] },
		["ColorColumn"] = { fg = "NONE", bg = c["ui"] },
		["CursorIM"] = { fg = c["bg"], bg = c["tx"] },
		["TermCursor"] = { fg = c["bg"], bg = c["tx"] },
		["TermCursorNC"] = { fg = c["bg"], bg = c["tx_3"] },
		["Visual"] = { fg = "NONE", bg = c["ui"] },
		["VisualNOS"] = { fg = "NONE", bg = c["ui_2"] },
	}
end

return M

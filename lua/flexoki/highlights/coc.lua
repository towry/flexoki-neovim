local palette = require("flexoki.palette")

local M = {}

---@param opts? FlexokiOptions
M.groups = function(opts)
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["CocFloating"] = { link = "NormalFloat" },
		["CocNotificationNormal"] = { fg = c["tx_2"], bg = c["ui_3"] },
		["CocInfoFloat"] = { bg = c.gr, fg = c.re },
		["CocNotificationButton"] = { link = "PmenuSel" },
		["CocNotificationProgress"] = { bg = c.gr, fg = c["gr"], bold = true },
		["CocNotificationInfo"] = { bg = c["ye_2"], fg = c["ye_2"], bold = true },
		["CocNotificationWarning"] = { bg = c["or_2"], fg = c["or_2"], bold = true },
		["CocNotificationError"] = { bg = c["re_2"], fg = c["re_2"], bold = true },
		CocUnusedHighlight = { fg = c["tx_3"], italic = true, undercurl = true },
		CocErrorHighlight = { undercurl = true, sp = c["re_2"] },
		CocWarningHighlight = { sp = c["ye_2"], undercurl = true },
		CocInfoHighlight = { sp = c["gr_2"], undercurl = true },
		CocHintHighlight = { sp = c["or_2"], undercurl = true },
	}
end

return M

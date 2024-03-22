local palette = require("flexoki.palette")

local M = {}

---@param opts FlexokiOptions
M.groups = function(opts)
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["CocFloating"] = { link = "NormalFloat" },
		["CocNotificationNormal"] = { fg = c["tx-2"], bg = c["ui-3"] },
		["CocInfoFloat"] = { bg = c.gr, fg = c.re },
		["CocNotificationButton"] = { link = "PmenuSel" },
		["CocNotificationProgress"] = { bg = c.gr, fg = c["gr"], bold = true },
		["CocNotificationInfo"] = { bg = c["ye-2"], fg = c["ye-2"], bold = true },
		["CocNotificationWarning"] = { bg = c["or-2"], fg = c["or-2"], bold = true },
		["CocNotificationError"] = { bg = c["re-2"], fg = c["re-2"], bold = true },
	}
end

return M

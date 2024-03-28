local palette = require('flexoki.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {

		--#region mini.completion

		['MiniCompletionActiveParameter'] = { link = 'Underlined' },

		--#endregion

		--#region mini.cursorword

		['MiniCursorword']        = { link = 'MatchWord'    },
		['MiniCursorwordCurrent'] = { link = 'MatchWordCur' },

		--#endregion

		--#region mini.indentscope

		['MiniIndentscopeSymbol']    = { fg = c['ui_3'], bg = 'NONE'    },
		['MiniIndentscopeSymbolOff'] = { link = 'MiniIndentscopeSymbol' },

		--#endregion

		--#region mini.jump

		['MiniJump'] = { fg = c['bg'], bg = c['cy'] },

		--#endregion

		--#region mini.jump2d

		['MiniJump2dSpot']       = { fg = c['bg'], bg = c['cy']   },
		['MiniJump2dSpotUnique'] = { fg = c['bg'], bg = c['cy']   },
		['MiniJump2dSpotAhead']  = { fg = c['bg'], bg = c['cy_2'] },
		['MiniJump2dSpotDim']    = { link = 'Comment'             },

		--#endregion

		--#region mini.trailspace

		['MiniTrailspace'] = { fg = c['re'], bg = c['re'] },

		--#endregion

		--#region mini.tabline

		['MiniTablineCurrent']         = { fg = c['cy'],   bg = c['ui_3'] },
		['MiniTablineVisible']         = { fg = c['tx_2'], bg = c['ui_2'] },
		['MiniTablineHidden']          = { fg = c['tx_2'], bg = c['ui']   },
		['MiniTablineModifiedCurrent'] = { fg = c['ora'],   bg = c['ui_3'] },
		['MiniTablineModifiedVisible'] = { fg = c['ora'],   bg = c['ui_2'] },
		['MiniTablineModifiedHidden']  = { fg = c['ora_2'], bg = c['ui']   },
		['MiniTablineFill']            = { fg = 'NONE',    bg = c['bg_2'] },
		['MiniTablineTabpagesection']  = { fg = c['tx'],   bg = c['cy_2'] },

		--#endregion

		--#region mini.surround

		['MiniSurround'] = { link = "Search" },

		--#endregion

		--#region mini.statusline

		['MiniStatuslineModeNormal']  = { fg = c['bg'], bg = c['ye_2'] },
		['MiniStatuslineModeInsert']  = { fg = c['bg'], bg = c['cy_2'] },
		['MiniStatuslineModeVisual']  = { fg = c['bg'], bg = c['gr_2'] },
		['MiniStatuslineModeReplace'] = { fg = c['bg'], bg = c['re_2'] },
		['MiniStatuslineModeCommand'] = { fg = c['bg'], bg = c['bl_2'] },
		['MiniStatuslineModeOther']   = { fg = c['bg'], bg = c['ma_2'] },

		['MiniStatuslineDevinfo']  = { fg = c['tx'],   bg = c['ui_2'] },
		['MiniStatuslineFilename'] = { fg = c['tx_2'], bg = c['ui']   },
		['MiniStatuslineFileinfo'] = { fg = c['tx'],   bg = c['ui_2'] },

		--#endregion
		--
		--#region mini.starter

		['MiniStarterCurrent']    = { fg = 'NONE',    bg = c['bg_2'] },
		['MiniStarterFooter']     = { fg = c['tx'],   bg = 'NONE'    },
		['MiniStarterHeader']     = { fg = c['tx'],   bg = 'NONE'    },
		['MiniStarterInactive']   = { fg = c['ui'],   bg = 'NONE'    },
		['MiniStarterItem']       = { fg = c['tx'],   bg = 'NONE'    },
		['MiniStarterItemBullet'] = { fg = c['tx'],   bg = 'NONE'    },
		['MiniStarterItemPrefix'] = { fg = c['cy'],   bg = 'NONE'    },
		['MiniStarterSection']    = { fg = c['tx_3'], bg = 'NONE'    },
		['MiniStarterQuery']      = { fg = c['tx'],   bg = 'NONE'    },

		--#endregion

		--#region mini.pick

		['MiniPickBorder']        = { fg   = c['ui_3'], bg = c['bg'] },
		['MiniPickBorderBusy']    = { fg   = c['ui'],   bg = c['bg'] },
		['MiniPickBorderText']    = { fg   = c['tx_2'], bg = c['bg'] },
		['MiniPickIconDirectory'] = { fg   = c['bl'],   bg = c['bg'] },
		['MiniPickIconFile']      = { fg   = c['cy'],   bg = c['bg'] },
		['MiniPickHeader']        = { fg   = c['tx'],   bg = c['bg'] },
		['MiniPickMatchCurrent']  = { fg   = c['gr'],   bg = c['bg'] },
		['MiniPickMatchMarked']   = { fg   = c['bl'],   bg = c['bg'] },
		['MiniPickMatchRanges']   = { fg   = c['gr'],   bg = c['bg'] },
		['MiniPickNormal']        = { fg   = 'NONE',    bg = 'NONE'  },
		['MiniPickPreviewLine']   = { link = 'Visual'                },
		['MiniPickPreviewRegion'] = { link = 'Visual'                },
		['MiniPickPrompt']        = { fg   = c['tx'],   bg = c['bg'] },

		--#endregion

		--#region mini.operators

		['MiniOperatorsExchangeFrom'] = { fg = c['tx'], bg = c['re'] },

		--#endregion

		--#region mini.map

		['MiniMapNormal'] = { fg = c['tx_3'], bg = c['bg_2'] },
		['MiniMapSymbolCount'] = { fg = c['tx'], bg = c['bg'] },
		['MiniMapSymbolLine'] = { fg = c['tx_2'], bg = c['bg_2'] },
		['MiniMapSymbolView'] = { fg = c['tx_2'], bg = c['bg_2'] },

		--#endregion

	}
end

return M

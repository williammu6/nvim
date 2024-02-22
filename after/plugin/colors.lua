function ColorMyPencils(color)  
  vim.cmd("colorscheme vscode")
  local hi = vim.api.nvim_set_hl
	hi(0, "Normal", { bg = "none" })
	hi(0, "SignColumn", { bg = "none" })

  hi(0, "GitGutterAdd", { bg = "none", fg = "#31748f"})
  hi(0, "GitGutterChange", { bg = "none", fg = "#f6c177"})
  hi(0, "GitGutterChangeDelete", { bg = "none", fg = "#c4a7e7"})
  hi(0, "GitGutterDelete", { bg = "none", fg = "#eb6f92" })
  hi(0, "GitGutterChangeDelete", { bg = "none", fg = "#c4a7e7"})

  hi(0, "NormalNC", { bg = "none" })

  hi(0, "TelescopeNormal", { bg = "none" })
  hi(0, "TelescopeBorder", { bg = "none" })
  hi(0, "TelescopePromptNormal", { bg = "none" })
  hi(0, "TelescopeResultsNormal", { bg = "none" })
  hi(0, "TelescopePreviewNormal", { bg = "none" })
  hi(0, "TelescopeMatching", { bg = "none" })

  hi(0, "TelescopeMatching", { bg = "none" })

  hi(0, "LineNr", { bg = "none" })
  hi(0, "NvimTreeNormal", { bg = "none" })

  hi(0, "TabLine", { bg = "none", fg = "gray" })
  hi(0, "TabLineFill", { bg = "none" })
  hi(0, "TabLineSel", { bg = "none", fg = "white" })
end

ColorMyPencils()

function ColorMyWorld(color)
    vim.cmd.colorscheme(color or "gruvbox")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end 

ColorMyWorld("rose-pine")

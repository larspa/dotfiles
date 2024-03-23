return {
  "bluz71/vim-moonfly-colors",
  name = "moonfly",
  lazy = false,
  priority = 1000,
  config = function()
    vim.opt.background = "dark" -- set this to dark or light
    vim.cmd("colorscheme moonfly")

    vim.cmd([[
    hi TreesitterContextBottom gui=underline guisp=Grey
    hi TreesitterContextLineNumberBottom gui=underline guisp=Grey
    ]])
  end,
}

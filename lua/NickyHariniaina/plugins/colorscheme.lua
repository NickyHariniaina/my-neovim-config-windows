
return {
  "sainnhe/everforest",
  priority = 1000,
  config = function()
    vim.g.everforest_background = "soft"
    vim.o.background = "light"
    vim.cmd("colorscheme everforest")
  end
}

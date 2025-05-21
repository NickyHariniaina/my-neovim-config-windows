return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")



dashboard.section.header.val = {
  "╔══════════════════════════════════════════════════════════════╗",
  "║                                                              ║",
  "║   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗         ║",
  "║   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║         ║",
  "║   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║         ║",
  "║   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║         ║",
  "║   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║         ║",
  "║   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝         ║",
  "║                                                              ║",
  "║   ~ whoami                                                   ║",
  "║   > NickyHariniaina                                          ║",
  "║                                                              ║",
  "╚══════════════════════════════════════════════════════════════╝",
}
    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  ~ Create a new file", "<cmd>ene<CR>"),
      dashboard.button("Space ee", "  ~ Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("Space ff", "󰱼  ~ Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("Space fr", "󰱼  ~ Recent files", "<cmd>Telescope oldfiles<cr>"),
      dashboard.button("Space fs", "  ~ Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("Space wr", "󰁯  ~ Restore Session", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  ~ Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}

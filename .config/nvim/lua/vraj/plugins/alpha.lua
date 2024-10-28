return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      [[                                  __]],
      [[     ___     ___    ___   __  __ /\_\    ___ ___]],
      [[    / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\]],
      [[   /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \]],
      [[   \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
      [[    \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", " New File", "<cmd>ene<CR>"),
      dashboard.button("S ee", "󰥩 Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("S ff", "󰈞 Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("S fs", "󰈬 Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("S wr", " Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}

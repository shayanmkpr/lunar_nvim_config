-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.transparent_window = true
lvim.builtin.bufferline.active = false
lvim.leader = "space"
lvim.use_icons = true
vim.opt.relativenumber = true
-- vim.opt.wrap = true
lvim.colorscheme = 'tokyonight'

lvim.keys.normal_mode["<leader>g"] = "<cmd>Telescope live_grep<CR>"
lvim.keys.normal_mode["<leader>r"] = "<cmd>reg<CR>"

lvim.keys.normal_mode["<leader>vv"] = "<cmd>vsplit<CR>"
lvim.keys.normal_mode["<leader>vq"] = "<C-w>q"
lvim.keys.normal_mode["<leader>s"] = "<C-w>w"

lvim.keys.visual_mode["<leader>y"] = '"*y'

lvim.plugins = {
  -- color schemes
  {
  "rose-pine/neovim", name = "rose-pine",
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
  require("copilot").setup({})
  end,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  --outline
  {
      "simrat39/symbols-outline.nvim",
  config = function()
    require('symbols-outline').setup()
  end;
  },
  {
    "hedyhli/outline.nvim",
    config = function()
      -- Example mapping to toggle outline
      vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>",
        { desc = "Toggle Outline" })

      require("outline").setup {
        -- Your setup opts here (leave empty to use defaults)
      }
    end,
  },
}

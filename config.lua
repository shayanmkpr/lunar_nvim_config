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
vim.opt.wrap = true
lvim.colorscheme = 'rose-pine-moon'
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

return {
  "Dan7h3x/neaterm.nvim",
  branch = "stable",
  event = "VeryLazy",
  opts = {
    keymaps = {
      toggle = '<leader>t',
      close = '<leader>q'
    }
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "ibhagwan/fzf-lua",
  },
}

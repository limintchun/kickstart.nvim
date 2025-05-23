return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.todo-introspector"] = {},
      ["core.ui.calendar"] = {},
      ["core.integrations.treesitter"] = {},
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/notes",
          },
          default_workspace = "notes",
        },
      },
    },
  },
  dependencies = {
    { "nvim-lua/plenary.nvim", },
    {
      -- YOU ALMOST CERTAINLY WANT A MORE ROBUST nvim-treesitter SETUP
      -- see https://github.com/nvim-treesitter/nvim-treesitter
      "nvim-treesitter/nvim-treesitter",
      opts = {
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      },
      config = function(_,opts)
        require('nvim-treesitter.configs').setup(opts)
      end
    },
  },
}

return {
  { -- pretty markdown
    'MeanderingProgrammer/render-markdown.nvim',
    -- enabled = false,
    opts = {
      heading = {
        width = 'block',
        min_width = 50,
        border = true,
        backgrounds = {
          'RenderMarkdownH1Bg',
          'RenderMarkdownH2Bg',
          'RenderMarkdownH3Bg',
          'RenderMarkdownH4Bg',
          'RenderMarkdownH5Bg',
          'RenderMarkdownH6Bg',
        },
        foregrounds = {
          'RenderMarkdownH1',
          'RenderMarkdownH2',
          'RenderMarkdownH3',
          'RenderMarkdownH4',
          'RenderMarkdownH5',
          'RenderMarkdownH6',
        },
      },
      render_modes = { 'n', 'v', 'i', 'c' },
      checkbox = {

        unchecked = { icon = '󰄱 ' },
        checked = { icon = ' ' },
        custom = { todo = { raw = '[>]', rendered = '󰥔 ' } },
      },
      code = {
        position = 'right',
        width = 'block',
        left_pad = 2,
        right_pad = 4,
      },
    },
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
  },

  {
    -- markdown preview
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && npm install',
    keys = {
      { '<leader>tm', ':MarkdownPreviewToggle<CR>', desc = '[T]oggle [m]arkdown' },
    },
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },
}

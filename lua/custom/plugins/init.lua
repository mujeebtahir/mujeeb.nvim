-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- TODO: Plugins to try
  -- * timewarrior: https://www.reddit.com/r/neovim/comments/1awiy1t/neovim_timetracking_system_using_timewarrior/
  -- * obsidian: https://www.reddit.com/r/neovim/comments/1awiy1t/neovim_timetracking_system_using_timewarrior/
  -- * Journaling?
  -- * Org-mode from emacs?
  -- * Neovide (sick animations, a gui for neovim) https://neovide.dev/
  -- * barbar.vim for buffer tabs
  --
  -- TODO: Fix things
  -- * Fix opts related to tab and spaces. Tab should be 8 not 4.
  --
  -- {
  --   'mg979/vim-visual-multi',
  --   branch = 'master',
  --   init = function()
  --     vim.g.VM_maps = {
  --       ['Find Under'] = '<C-n>',
  --     }
  --   end,
  -- },
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'powerman/vim-plugin-AnsiEsc', -- he AnsiEsc.vim file, when sourced, will conceal Ansi escape sequences but will cause subsequent text to be colored as the escape sequence specifies.

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  {
    'shortcuts/no-neck-pain.nvim',
    version = '*',
    opts = {
      width = 127,
    },
    keys = {
      { '<leader>np', ':NoNeckPain<CR>', desc = 'NoNeckPain', silent = true, noremap = true },
    },
  },
  {
    'azabiong/vim-highlighter',
    init = function()
      -- settings
    end,
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'famiu/bufdelete.nvim',
    },
    --event = 'VeryLazy', -- or use "BufReadPre" if you want it earlier
    lazy = false,
    config = function()
      require('bufferline').setup {
        options = {
          separator_style = 'slope',
          indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'underline',
          },
          themable = true,
          left_mouse_command = 'buffer %d', -- can be a string | function, | false see "Mouse actions"
          right_mouse_command = 'vertical sbuffer %d',
          middle_mouse_command = 'Bdelete! %d', -- can be a string | function | false, see "Mouse actions"
          close_command = 'Bdelete! %d', -- can be a string | function, | false see "Mouse actions"
          show_buffer_close_icons = false,
          hover = {
            enabled = true,
            delay = 200,
            reveal = { 'close' },
          },
          offsets = {
            {
              filetype = 'NvimTree',
              text = 'File Explorer',
              text_align = 'center',
              separator = true,
            },
          },
          diagnostics = 'nvim_lsp',
          diagnostics_indicator = function(count, level)
            local icon = level:match 'error' and ' ' or ' '
            return ' ' .. icon .. count
          end,
        },
      }
    end,
    keys = {
      { '<Tab>', '<CMD>BufferLineCycleNext<CR>', desc = 'Buffer Next' },
      { '<S-Tab>', '<CMD>BufferLineCyclePrev<CR>', desc = 'Buffer Close' },
      { '<C-d>', '<CMD>Bdelete<CR>', desc = 'Buffer Close/Delete' },
      { '<S-h>', '<CMD>BufferLineMovePrev<CR>', desc = 'Move BufferLine to left' },
      { '<S-l>', '<CMD>BufferLineMoveNext<CR>', desc = 'Move BufferLine to right' },
    },
  },
  { 'famiu/bufdelete.nvim', version = '*' },
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
}

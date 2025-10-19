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

  { 'famiu/bufdelete.nvim', version = '*' },
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- To render/preview Markdown files inside vim buffer
  --  {
  --    'Urtlp/markview.nvim',
  --    lazy = false,
  --    ft = { 'markdown' }, -- load only on .md
  --    cmd = { 'MarkViewToggle', 'MarkViewOpen', 'MarkViewClose' }, -- lazy load
  --    dependencies = {
  --      'nvim-lua/plenary.nvim',
  --      'MunifTanjim/nui.nvim',
  --    },
  --    keys = {
  --      {
  --        '<leader>mv',
  --        function()
  --          require('markview').toggle_preview()
  --        end,
  --        desc = 'Toggle MarkView',
  --      },
  --    },
  --  },
  {
    'OXY2DEV/markview.nvim',
    ft = { 'markdown' }, -- Load only for markdown files
    cmd = { 'MarkViewOpen', 'MarkViewToggle' }, -- Don't run automatically
    lazy = false,
    opts = {}, -- uses defaults
    config = function()
      require('markview').setup()
      -- Optional: Define a user command to run markdownlint manually
      vim.api.nvim_create_user_command('MarkdownLint', function()
        require('lint').try_lint 'markdownlint'
      end, {})
    end,
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },
  -- To render/preview Markdown files in a browser
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
      vim.g.mkdp_auto_start = 0 -- set to 1 if you want preview to start on open
      vim.g.mkdp_auto_close = 1
      vim.g.mkdp_browser = '' -- leave empty to use default browser
    end,
    ft = { 'markdown' },
  },

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
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },
}

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
  -- 'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  -- {
  --   'mg979/vim-visual-multi',
  --   branch = 'master',
  --   init = function()
  --     vim.g.VM_maps = {
  --       ['Find Under'] = '<C-n>',
  --     }
  --   end,
  -- },
  'powerman/vim-plugin-AnsiEsc', -- he AnsiEsc.vim file, when sourced, will conceal Ansi escape sequences but will cause subsequent text to be colored as the escape sequence specifies.

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  {
    'shortcuts/no-neck-pain.nvim',
    version = '*',
    opts = {
      width = 127,
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
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VeryLazy', -- or use "BufReadPre" if you want it earlier
    config = function()
      require('bufferline').setup {}
    end,
  },
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
}

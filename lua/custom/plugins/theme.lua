-- return { -- You can easily change to a different colorscheme.
--     -- Change the name of the colorscheme plugin below, and then
--     -- change the command in the config to whatever the name of that colorscheme is.
--     --
--     -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
--     'folke/tokyonight.nvim',
--     priority = 1000, -- Make sure to load this before all the other start plugins.
--     init = function()
--       -- Load the colorscheme here.
--       -- Like many other themes, this one has different styles, and you could load
--       -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
--       vim.cmd.colorscheme 'tokyonight-night'
--
--       -- You can configure highlights by doing something like:
--       vim.cmd.hi 'Comment gui=none'
--     end,
--   }
-- return {
--   -- Themery controller
--   {
--     'zaldih/themery.nvim',
--     cmd = { 'Themery' }, -- lazy-load only on command
--     config = function()
--       require('themery').setup {
--         themes = {
--           { name = 'tokyonight', colorscheme = 'tokyonight' },
--           { name = 'tokyonight-day', colorscheme = 'tokyonight-day' },
--           { name = 'tokyonight-moon', colorscheme = 'tokyonight-moon' },
--           { name = 'tokyonight-night', colorscheme = 'tokyonight-night' },
--           { name = 'tokyonight-storm', colorscheme = 'tokyonight-storm' },
--           { name = 'catppuccin', colorscheme = 'catppuccin' },
--           { name = 'catppuccin-frappe', colorscheme = 'catppuccin-frappe' },
--           { name = 'catppuccin-latte', colorscheme = 'catppuccin-latte' },
--           { name = 'catppuccin-macchiato', colorscheme = 'catppuccin-macchiato' },
--           { name = 'catppuccin-mocha', colorscheme = 'catppuccin-mocha' },
--           { name = 'ayu', colorscheme = 'ayu' },
--           { name = 'ayu-dark', colorscheme = 'ayu-dark' },
--           { name = 'ayu-light', colorscheme = 'ayu-light' },
--           { name = 'ayu-mirage', colorscheme = 'ayu-mirage' },
--           -- { name = 'gruvbox', colorscheme = 'gruvbox' },
--           -- { name = 'ayu', colorscheme = 'ayu' },
--           -- { name = 'onedark', colorscheme = 'onedark' },
--           -- { name = 'tokyonight', colorscheme = 'tokyonight' },
--           -- { name = 'catppuccin', colorscheme = 'catppuccin' },
--         },
--         themeConfigFile = '~/.config/nvim/lua/config/theme.lua', -- or anywhere you want
--         livePreview = true,
--         autoApply = false,
--       }
--     end,
--   },
--
--   -- Gruvbox
--   {
--     'ellisonleao/gruvbox.nvim',
--     lazy = true,
--     priority = 1000,
--   },
--
--   -- Ayu
--   {
--     'Shatur/neovim-ayu',
--     lazy = true,
--     priority = 1000,
--   },
--
--   -- Onedark
--   {
--     'navarasu/onedark.nvim',
--     lazy = true,
--     priority = 1000,
--   },
--
--   -- Tokyonight
--   {
--     'folke/tokyonight.nvim',
--     lazy = true,
--     priority = 1000,
--   },
--
--   -- Catppuccin
--   {
--     'catppuccin/nvim',
--     name = 'catppuccin',
--     lazy = true,
--     priority = 1000,
--   },
-- }
--
--
--   {
--     'zaldih/themery.nvim',
--     lazy = false,
--     config = function()
--       require('themery').setup {
--         themes = { 'gruvbox', 'ayu' }, -- Your list of installed colorschemes.
--         -- themes = {
--         -- {
--         --   name = 'catppuccin',
--         --   colorscheme = 'catppuccin-mocha',
--         -- },
--         -- {
--         --   name = 'tokyonight',
--         --   colorscheme = 'tokyonight-night',
--         -- },
--         -- {
--         --   name = 'gruvbox',
--         --   colorscheme = 'gruvbox',
--         -- },
--         -- },
--         livePreview = true,
--       }
--     end,
--   },
--
--   -- {
--   --   'catppuccin/nvim',
--   --   name = 'catppuccin',
--   --   priority = 1000,
--   --   init = function()
--   --     -- NOTE for further configurations refer to https://github.com/catppuccin/nvim?tab=readme-ov-file#configuration
--   --     vim.cmd.colorscheme 'catppuccin'
--   --   end,
--   -- },
--   {
--     'folke/tokyonight.nvim',
--     lazy = true,
--     -- opts = { style = 'moon' },
--   },
--   {
--     'navarasu/onedark.nvim',
--     lazy = true,
--     -- opts = { style = 'darker' },
--     -- init = function()
--     --   vim.cmd.colorscheme 'onedark'
--     -- end,
--   },
-- }
--
--
-- a mix of light and dark themes
return {
  -- Themery controller
  {
    'zaldih/themery.nvim',
    cmd = { 'Themery' },
    config = function()
      require('themery').setup {
        themes = {
          -- 🌙 Dark / General Themes
          { name = 'tokyonight', colorscheme = 'tokyonight' },
          { name = 'tokyonight-moon', colorscheme = 'tokyonight-moon' },
          { name = 'tokyonight-night', colorscheme = 'tokyonight-night' },
          { name = 'tokyonight-storm', colorscheme = 'tokyonight-storm' },
          { name = 'catppuccin', colorscheme = 'catppuccin' },
          { name = 'catppuccin-frappe', colorscheme = 'catppuccin-frappe' },
          { name = 'catppuccin-macchiato', colorscheme = 'catppuccin-macchiato' },
          { name = 'catppuccin-mocha', colorscheme = 'catppuccin-mocha' },
          { name = 'ayu', colorscheme = 'ayu' },
          { name = 'ayu-dark', colorscheme = 'ayu-dark' },
          { name = 'ayu-mirage', colorscheme = 'ayu-mirage' },

          -- ☀️ Light Themes (with `light-` prefix)
          { name = 'light-tokyonight-day', colorscheme = 'tokyonight-day' },
          { name = 'light-catppuccin-latte', colorscheme = 'catppuccin-latte' },
          { name = 'light-ayu-light', colorscheme = 'ayu-light' },
          { name = 'light-dayfox', colorscheme = 'dayfox' },
          { name = 'light-dawnfox', colorscheme = 'dawnfox' },
          { name = 'light-kanagawa-lotus', colorscheme = 'kanagawa-lotus' },
          { name = 'light-rose-pine-dawn', colorscheme = 'rose-pine-dawn' },
          { name = 'light-PaperColor', colorscheme = 'PaperColor' },
          { name = 'light-github_light', colorscheme = 'github_light' },
          { name = 'light-modus_operandi', colorscheme = 'modus_operandi' },
        },
        themeConfigFile = '~/.config/nvim/lua/config/theme.lua',
        livePreview = true,
        autoApply = false,
      }
    end,
  },

  -- Existing themes
  { 'ellisonleao/gruvbox.nvim', lazy = true, priority = 1000 },
  { 'Shatur/neovim-ayu', lazy = true, priority = 1000 },
  { 'navarasu/onedark.nvim', lazy = true, priority = 1000 },
  { 'folke/tokyonight.nvim', lazy = true, priority = 1000 },
  { 'catppuccin/nvim', name = 'catppuccin', lazy = true, priority = 1000 },

  -- ✨ Light theme plugins
  { 'EdenEast/nightfox.nvim', lazy = true, priority = 1000 }, -- dayfox, dawnfox
  { 'rebelot/kanagawa.nvim', lazy = true, priority = 1000 }, -- kanagawa-lotus
  { 'rose-pine/neovim', name = 'rose-pine', lazy = true, priority = 1000 }, -- rose-pine-dawn
  { 'NLKNguyen/papercolor-theme', lazy = true, priority = 1000 }, -- PaperColor
  { 'projekt0n/github-nvim-theme', lazy = true, priority = 1000 }, -- github_light
  { 'ishan9299/modus-theme-vim', lazy = true, priority = 1000 }, -- modus_operandi
}

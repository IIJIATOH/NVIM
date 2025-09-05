-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'mason-org/mason.nvim', version = '~1.0.0' },
  { 'mason-org/mason-lspconfig.nvim', version = '~1.0.0' },
  {
    'm4xshen/hardtime.nvim',
    lazy = false,
    dependencies = { 'MunifTanjim/nui.nvim' },
    opts = {
      disable_mouse = false,
    },
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('nvim-tree').setup {}
      vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')
    end,
  },
}

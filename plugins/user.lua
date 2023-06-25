return {
     -- You can also add new plugins here as well:
     -- Add plugins, the lazy syntax
     -- "andweeb/presence.nvim",
     "andymass/vim-matchup",
     -- "folke/zen-mode.nvim",
     "karb94/neoscroll.nvim",
     "junegunn/vim-slash",
     -- "renerocksai/telekasten.nvim",
     "renerocksai/calendar-vim",
     "hkupty/iron.nvim",
     {
          "ahmedkhalf/project.nvim",
          event = 'VeryLazy'
     },
     {
          "windwp/nvim-spectre",
          event = 'User Astrofile'
     },

     -- NOTE: colors
     -- "morhetz/gruvbox",
     "tomasr/molokai",
     "sjl/badwolf",
     "sainnhe/everforest",
     "EdenEast/nightfox.nvim", -- lazy

     "jmcantrell/vim-virtualenv",
     -- "nanotee/sqls.nvim",
     "SirVer/ultisnips",
     "honza/vim-snippets",
     "quangnguyen30192/cmp-nvim-ultisnips",
     -- "vim-scripts/vim-autopep8",
     {
          "mg979/vim-visual-multi",
          event = 'User Astrofile'
     },
     {
          "mbbill/undotree",
          event = 'User Astrofile'
     },
     {
          "huggingface/hfcc.nvim",
          config = function()
               require('hfcc').setup({
                    -- cf Setup
               })
          end,
     },
     {
          "folke/todo-comments.nvim",
          dependencies = { "nvim-lua/plenary.nvim" },
          opts = {
          },
          event = 'User Astrofile'
     },
     {
          "lalitmee/browse.nvim",
          dependencies = { "nvim-telescope/telescope.nvim" },
          event = 'User Astrofile',
          provider = 'brave',
     }
     -- {
     --   "ray-x/lsp_signature.nvim",
     --   event = "BufRead",
     --   config = function()
     --     require("lsp_signature").setup()
     --   end,
     -- }
}

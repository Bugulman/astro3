return {
     -- You can also add new plugins here as well:
     -- Add plugins, the lazy syntax
     -- "andweeb/presence.nvim",
     "andymass/vim-matchup",
     "folke/zen-mode.nvim",
     "karb94/neoscroll.nvim",
     "junegunn/vim-slash",
     "renerocksai/telekasten.nvim",
     "renerocksai/calendar-vim",
     "lalitmee/browse.nvim",
     "hkupty/iron.nvim",
     "ahmedkhalf/project.nvim",
     "windwp/nvim-spectre",
     "morhetz/gruvbox",
     "tomasr/molokai",
     "jmcantrell/vim-virtualenv",
     "nanotee/sqls.nvim",
     "SirVer/ultisnips",
     "honza/vim-snippets",
     "quangnguyen30192/cmp-nvim-ultisnips",
     "vim-scripts/vim-autopep8",
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
     }
     -- {
     --   "ray-x/lsp_signature.nvim",
     --   event = "BufRead",
     --   config = function()
     --     require("lsp_signature").setup()
     --   end,
     -- },
}

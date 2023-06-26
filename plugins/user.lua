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
     {
          "ahmedkhalf/project.nvim",
          event = 'VeryLazy'
     },
     {
          "windwp/nvim-spectre",
          event = 'User Astrofile'
     },

     -- NOTE: colors
     "morhetz/gruvbox",
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
          opts = {
               api_token = "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", -- cf Install paragraph
               model = "bigcode/starcoder",                         -- can be a model ID or an http(s) endpoint
               -- parameters that are added to the request body
               query_params = {
                    max_new_tokens = 256,
                    temperature = 0.3,
                    top_p = 0.5,
                    stop_token = "<|endoftext|>",
               },
               -- set this if the model supports fill in the middle
               fim = {
                    enabled = true,
                    prefix = "<fim_prefix>",
                    middle = "<fim_middle>",
                    suffix = "<fim_suffix>",
               },
          },
          event = 'VeryLazy'
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
     },
     {
          'pappasam/nvim-repl',
          dependencies = { "tpope/vim-repeat" },
          repl_filetype_commands = {
               python = "ipython --no-autoindent",
          },
          event = 'User Astrofile'
     },
     --   "ray-x/lsp_signature.nvim",
     --   event = "BufRead",
     --   config = function()
     --     require("lsp_signature").setup()
     --   end,
     -- }
}

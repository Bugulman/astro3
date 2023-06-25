-- local pjefix = "<leader>s" --for spectre plugin
-- NOTE: ALPHA dashboard setting
local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end
--
local dashboard = require "alpha.themes.dashboard"
--
local function button(sc, txt, keybind, keybind_opts)
  local b = dashboard.button(sc, txt, keybind, keybind_opts)
  b.opts.hl_shortcut = "Macro"
  return b
end
--
--
dashboard.section.header.val = {
  [[░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░]],
  [[░░░░░░░░░░░░░░░░░░░░░░░░░░░┌───┬───┬───┐░░░░░░░░░░░░░░░░░░░░░]],
  [[░░░░░░░░░┌─────────────┬░░░│┌─┐│┌──┴┐┌┐│░░░░░░░░░░░░░░░░░░░░░]],
  [[░░░░░░░┌─┘───────────┌─┤░░░│└─┘│░──┐││││░░░░░░░░░░░░░░░░░░░░░]],
  [[░░░░░┌─┘────────────┌┘╬│░░░│┌┐┌┤┌──┘││││░░░░░░░░░░░░░░░░░░░░░]],
  [[░░░░┌┘────────────┌─┘╬╬│░░░│││└┤│░░┌┘└┘│░░░░░░░░░░░░░░░░░░░░░]],
  [[░░┌─┘───────────┌─┘╬╬┌─┤░░░└┘└─┴┘░░└───┘░░░░░░░░░░░░░░░░░░░░░]],
  [[░░├─────────────┤╬╬┌─┘═│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░]],
  [[░░│╬╬╬╬╬╬╬╬╬╬╬╬╬│╬─┘═══│░░░░┌┐┌─┐░┌┐░░░░░░░░░░░░░┌┐░░░░░░░░░░]],
  [[░░│╬╬╬╬╬╬╬╬╬┌───┼┘═══┌─┤░░░┌┘└┤│└┐││░░░░░░░░░░░░┌┘└┐░░░░░░░░░]],
  [[░░├─────────┘═══│══┌─┘║│░░░└┐┌┤┌┐└┘├──┬┐┌┬┬──┬──┼┐┌┼──┬─┐░░░░]],
  [[░░│═════════════│┌─┘║┌─┘░░░░││││└┐││┌┐│└┘├┤┌┐│┌┐││││┌┐│┌┘░░░░]],
  [[░░│═════┌───────┼┘║║┌┘░░░░░░│└┤│░│││┌┐├┐┌┤│└┘│┌┐││└┤└┘││░░░░░]],
  [[░░├─────┘║║║║║║║│║┌─┘░░░░░░░└─┴┘░└─┴┘└┘└┘└┴─┐├┘└┘└─┴──┴┘░░░░░]],
  [[░░└─────────────┴─┘░░░░░░░░░░░░░░░░░░░░░░░┌─┘│░░░░░░░░░░░░░░░]],
  [[░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░└──┘░░░░░░░░░░░░░░░]],
}
dashboard.section.buttons.val = {
  button("f", "  Find file", ":Telescope find_files <CR>"),
  button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  button("p", " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
  button("r", "  Recent files", ":Telescope oldfiles <CR>"),
  button("t", "  Find text", ":Telescope live_grep <CR>"),
  -- dashboard.button("s", icons.ui.SignIn .. " Find Session", ":silent Autosession search <CR>"),
  button("s", "  Find Session", ":SessionManager load_session<CR>"),
  -- TODO: сделать линк на bookmarks
  --astronvim.alpha_button("LDR f m", "  Bookmarks  "),
  button("c", " Config", ":e ~/.config/nvim/init.lua <CR>"),
  button("u", "  Update", ":PackerSync<CR>"),
  button("q", " Quit", ":qa<CR>"),
}
-- dashboard.section.header.opts.hl = "Include"
-- dashboard.section.buttons.opts.hl = "Macro"
--
dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)

return {
      -- Configure AstroNvim updates
      updater = {
        remote = "origin",     -- remote to use
        channel = "stable",    -- "stable" or "nightly"
        version = "latest",    -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
        branch = "nightly",    -- branch name (NIGHTLY ONLY)
        commit = nil,          -- commit hash (NIGHTLY ONLY)
        pin_plugins = nil,     -- nil, true, false (nil will pin plugins on stable only)
        skip_prompts = false,  -- skip prompts about breaking changes
        show_changelog = true, -- show the changelog after performing an update
        auto_quit = false,     -- automatically quit the current session after a successful update
        remotes = {            -- easily add new remotes to track
          --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
          --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
          --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
        },
      },

      -- Set colorscheme to use
      -- colorscheme = "everforest",
      -- colorscheme = "Terafox",
      colorscheme = "Nightfox",
      --
      -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
      diagnostics = {
        virtual_text = true,
        underline = true,
      },

      lsp = {
        -- customize lsp formatting options
        formatting = {
          -- control auto formatting on save
          format_on_save = {
            enabled = true,     -- enable or disable format on save globally
            allow_filetypes = { -- enable format on save for specified filetypes only
              -- "go",
            },
            ignore_filetypes = { -- disable format on save for specified filetypes
              -- "python",
            },
          },
          disabled = { -- disable formatting capabilities for the listed language servers
            -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
            -- "lua_ls",
          },
          timeout_ms = 1000, -- default format timeout
          -- filter = function(client) -- fully override the default formatting function
          --   return true
          -- end
        },
        -- enable servers that you already have installed without mason
        servers = {
          -- "pyright"
        },
      },

      -- Configure require("lazy").setup() options
      lazy = {
        defaults = { lazy = true },
        performance = {
          rtp = {
            -- customize default disabled vim plugins
            disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
          },
        },
      },

      -- This function is run last and is a good place to configuring
      -- augroups/autocommands and custom filetypes also this just pure lua so
      -- anything that doesn't fit in the normal config locations above can go here
      polish = function()
        -- Set up custom filetypes
        -- vim.filetype.add {
        --   extension = {
        --     foo = "fooscript",
        --   },
        --   filename = {
        --     ["Foofile"] = "fooscript",
        --   },
        --   pattern = {
        --     ["~/%.config/foo/.*"] = "fooscript",
        --   },
        -- }
      end,
      -- NOTE: NEOSCROLL PLUGIN
      "karb94/neoscroll.nvim",
      event = "VeryLazy",
      mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
      hide_cursor = true,           -- Hide cursor while scrolling
      stop_eof = true,              -- Stop at <EOF> when scrolling downwards
      use_local_scrolloff = false,  -- Use the local scope of scrolloff instead of the global scope
      respect_scrolloff = true,     -- Stop scrolling when the cursor reaches the scrolloff margin of the file
      cursor_scrolls_alone = false, -- The cursor will keep on scrolling even if the window cannot scroll further
    },
    -- NOTE: HOP PLUGIN
    "phaazon/hop.nvim",
    keys == {
      {
        "s",
        function() require("hop").hint_words() end,
        mode = { "n" },
        desc = "Hop hint words",
      },
      {
        "<S-s>",
        function() require("hop").hint_lines() end,
        mode = { "n" },
        desc = "Hop hint lines",
      },
      {
        "s",
        function() require("hop").hint_words { extend_visual = true } end,
        mode = { "v" },
        desc = "Hop hint words",
      },
      {
        "<S-s>",
        function() require("hop").hint_lines { extend_visual = true } end,
        mode = { "v" },
        desc = "Hop hint lines",
      },
      -- NOTE: PROJECT PLUGIN
      "ahmedkhalf/project.nvim",
      event = "VeryLazy",
      opts = { ignore_lsp = { "lua_ls" } },
      config = function(_, opts) require("project_nvim").setup(opts) end,
      ---@usage set to false to disable project.nvim.
      --- This is on by default since it's currently the expected behavior.
      active = true,

      on_config_done = nil,

      ---@usage set to true to disable setting the current-woriking directory
      --- Manual mode doesn't automatically change your root directory, so you have
      --- the option to manually do so using `:ProjectRoot` command.
      manual_mode = false,

      ---@usage Methods of detecting the root directory
      --- Allowed values: **"lsp"** uses the native neovim lsp
      --- **"pattern"** uses vim-rooter like glob pattern matching. Here
      --- order matters: if one is not detected, the other is used as fallback. You
      --- can also delete or rearangne the detection methods.
      -- detection_methods = { "lsp", "pattern" }, -- NOTE lsp detection will get annoying with multiple langs in one project
      detection_methods = { "pattern" },

      ---@usage patterns used to detect root dir, when **"pattern"** is in detection_methods
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },

      ---@ Show hidden files in telescope when searching for files in a project
      show_hidden = false,

      silent_chdir = true,

      ignore_lsp = {},

      ---@type string
      ---@usage path to store the project history for use in telescope
      datapath = vim.fn.stdpath("data"),

      { "nvim-telescope/telescope.nvim", opts = function() require("telescope").load_extension "projects" end },
    },
    --NOTE: SPECTRE PLUGIN
    "nvim-pack/nvim-spectre",
    cmd == "Spectre",
    opts == function()
      return {
        mapping = {
          send_to_qf = { map = "q" },
          replace_cmd = { map = "c" },
          show_option_menu = { map = "o" },
          run_current_replace = { map = "C" },
          run_replace = { map = "R" },
          change_view_mode = { map = "v" },
          resume_last_search = { map = "l" },
        },
      }
    end,
    --WARN: TODO comments что то не так с цветами
    "folke/todo-comments.nvim",
    {
      signs = true,      -- show icons in the signs column
      sign_priority = 8, -- sign priority
      -- keywords recognized as todo comments
      keywords = {
        FIX = {
          icon = " ",                              -- icon used for the sign, and in search results
          color = "error",                            -- can be a hex color, or a named color (see below)
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
          -- signs = false, -- configure signs for some keywords individually
        },
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
      gui_style = {
        fg = "NONE",         -- The gui style to use for the fg highlight group.
        bg = "BOLD",         -- The gui style to use for the bg highlight group.
      },
      merge_keywords = true, -- when true, custom keywords will be merged with the defaults
      -- highlighting of the line containing the todo comment
      -- * before: highlights before the keyword (typically comment characters)
      -- * keyword: highlights of the keyword
      -- * after: highlights after the keyword (todo text)
      highlight = {
        multiline = true,                -- enable multine todo comments
        multiline_pattern = "^.",        -- lua pattern to match the next multiline from the start of the matched keyword
        multiline_context = 10,          -- extra lines that will be re-evaluated when changing a line
        before = "",                     -- "fg" or "bg" or empty
        keyword = "wide",                -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
        after = "fg",                    -- "fg" or "bg" or empty
        pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
        comments_only = true,            -- uses treesitter to match keywords in comments only
        max_line_len = 400,              -- ignore lines longer than this
        exclude = {},                    -- list of file types to exclude highlighting
      },
      -- list of named colors where we try to extract the guifg from the
      -- list of highlight groups or use the hex color if hl not found as a fallback
      colors = {
        error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
        warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
        info = { "DiagnosticInfo", "#2563EB" },
        hint = { "DiagnosticHint", "#10B981" },
        default = { "Identifier", "#7C3AED" },
        test = { "Identifier", "#FF00FF" }
      },
      search = {
        command = "rg",
        args = {
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
        },
        -- regex that will be used to match keywords.
        -- don't replace the (KEYWORDS) placeholder
        pattern = [[\b(KEYWORDS):]], -- ripgrep regex
        -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
      },
    },
    --NOTE: network config for using AI in code
    "huggingface/hfcc.nvim",
    {
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
    }

-- [NOTE:] CMP with ultisnip config
-- 'hrsh7th/nvim-cmp',
-- {
--   sources = {
--     { name = "nvim_lsp" },
--     { name = "ultisnips" },
--     { name = "buffer" },
--     { name = "path" },
--   },
--   confirm_opts = {
--     behavior = cmp.ConfirmBehavior.Replace,
--     select = false,
--   },
--   window = {
--     documentation = cmp.config.window.bordered(),
--   },
--   experimental = {
--     ghost_text = false,
--     native_menu = false,
--   },
-- }

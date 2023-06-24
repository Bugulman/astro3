-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
      -- second key is the lefthand side of the map
      -- mappings seen under group name "Buffer"
      ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
      ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
      ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
      ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
      ["<A-h>"] = { "<C-w>h", desc = "Move left" },
      ["<A-j>"] = { "<C-w>j", desc = "Move down" },
      ["<A-k>"] = { "<C-w>k", desc = "Move up" },
      ["<A-l>"] = { "<C-w>l", desc = "Move right" },
      ["<leader>-"] = { ":e $HOME/AppData/Local/nvim/init.lua<CR>", desc = "open config file" },
      ["<leader>x"] = { ":bp<bar>sp<bar>bn<bar>bd!<Enter>", desc = "open config file" },
      ["<C-n>"] = { ":Neotree reveal_force_cwd<Enter>", desc = "reveal Neotree window" },
      -- hop key
      ["jf"] = { ":HopChar2<cr>", silent=true, desc = "find letter" },
      --browse key
      ["<m-o>"] = { "<cmd>BrowseBookmarks<cr>", desc = "browse_bookmarks" },
      ["<m-i>"] = { "<cmd>BrowseInputSearch<cr>", desc = "google search" },
      --telescope key
      ["<leader>fp"] = { ":lua require('telescope').extensions.projects.projects()<CR>", desc = "project search" },
      ["<leader>ft"] = { ":TodoTelescope<CR>", desc = "todo_search" },
      ["<leader>ss"] = { ":lua require('spectre').open()<CR>", desc = "spectre" },
      --telekastennnoremap <leader>zf :lua require('telekasten').find_notes()<CR>
      ["<leader>zd"] = { ":lua require('telekasten').find_daily_notes()<CR>", desc="find_daily_notes"},
      ["<leader>zg"] = { ":lua require('telekasten').search_notes()<CR>", desc="search_notes"},
      ["<leader>zz"] = { ":lua require('telekasten').follow_link()<CR>", desc="follow_link"},
      -- ["<leader>zT"] = { ":lua require('telekasten').goto_today()<CR>", desc="cast"},
      -- ["<leader>zW"] = { ":lua require('telekasten').goto_thisweek()<CR>", desc="cast"},
      -- ["<leader>zw"] = { ":lua require('telekasten').find_weekly_notes()<CR>", desc="cast"},
      ["<leader>zn"] = { ":lua require('telekasten').new_note()<CR>", desc="new_note"},
      ["<leader>zN"] = { ":lua require('telekasten').new_templated_note()<CR>", desc="new_templated_note"},
      ["<leader>zy"] = { ":lua require('telekasten').yank_notelink()<CR>", desc="yank_notelink"},
      ["<leader>zc"] = { ":lua require('telekasten').show_calendar()<CR>", desc="show_calendar"},
      ["<leader>zC"] = { ":CalendarT<CR>", desc="CalendarT"},
      -- TIP: разобраться что делают эти функции
      ["<leader>zi"] = { ":lua require('telekasten').paste_img_and_link()<CR>", desc="paste_img_and_link"},
      ["<leader>zt"] = { ":lua require('telekasten').toggle_todo()<CR>", desc="toggle_todo"},
      ["<leader>zb"] = { ":lua require('telekasten').show_backlinks()<CR>", desc="show_backlinks"},
      ["<leader>zF"] = { ":lua require('telekasten').find_friends()<CR>", desc="cast"},
      ["<leader>zI"] = { ":lua require('telekasten').insert_img_link({ i=true })<CR>", desc="insert_img_link"},
      ["<leader>zp"] = { ":lua require('telekasten').preview_img()<CR>", desc="preview_img"},
      ["<leader>zm"] = { ":lua require('telekasten').browse_media()<CR>", desc="browse_media"},
      ["<leader>za"] = { ":lua require('telekasten').show_tags()<CR>", desc="show_tags"},
      -- ["<leader>#"] = { ":lua require('telekasten').show_tags()<CR>", desc="cast"},
      ["<leader>zr"] = { ":lua require('telekasten').rename_note()<CR>", desc="rename_note"},
      ["<F2>"] = { ":IronReplHere<CR>", desc="IPYTHON"},
      --ultisnip mapping
      -- ["ff"] = { "UltiSnipsJumpForwardTrigger", desc="Ulti_forward"},
      -- ["bb"] = { "UltiSnipsJumpBackwardTrigger", desc="Ulti_backward"},
      ["<C-C>"] = { '"+y', desc = "copy to global buffer" },
      ["<p>"] = { '"+p', desc = "paste from global buffer" },
     ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

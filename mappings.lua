-- Mapping data with "desc" stored directly by vim.keymap.set().
--NOTE: BROWSE plugin
local bookmarks = {
    ['work'] = {
        "https://srv.rfdyn.ru",
        "https://mail.rfdyn.ru/#1",
        "https://rchat.rfdyn.ru/home",
        "https://support.rfdyn.ru/index.php",
        "https://srv.rfdyn.ru/releases/releases_dir.php",
        "https://petrowiki.spe.org/PetroWiki" },
    ['education'] = {
        "https://stepik.org/",
        "https://baguzin.ru/wp/",
        "https://pbpython.com/index.html",
        "https://github.com/rockerBOO/awesome-neovim",
        "https://doc.rust-lang.org/book/",
        "https://aur.archlinux.org/packages/",
        "https://news.ycombinator.com/" },
}

local function command(name, rhs, opts)
    opts = opts or {}
    vim.api.nvim_create_user_command(name, rhs, opts)
end

command("BrowseInputSearch", function()
    require('browse').input_search()
end, {})

command("Browse", function()
    browse.browse { bookmarks = bookmarks }
end, {})
command("BrowseBookmarks", function()
    require('browse').open_bookmarks({ bookmarks = bookmarks })
end, {})
command("BrowseDevdocsSearch", function()
    browse.devdocs.search()
end, {})
command("BrowseDevdocsFiletypeSearch", function()
    browse.devdocs.search_with_filetype()
end, {})
command("BrowseMdnSearch", function()
    browse.mdn.search()
end, {})

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
        ["<leader>-"] = { ":e $HOME/AppData/Local/nvim/lua/user/init.lua<CR>", desc = "open config file" },
        ["<leader>x"] = { ":bp<bar>sp<bar>bn<bar>bd!<Enter>", desc = "close file with buffer" },
        ["<leader>e"] = { ":Neotree reveal_force_cwd<Enter>", desc = "reveal Neotree window" },
        -- hop key
        -- ["jf"] = { ":HopChar2<cr>", silent = true, desc = "find letter" },
        ["jf"] = { ":HFccSuggestion<cr>", silent = true, desc = "use AI dark power" },
        ["<C-i>"] = { ":UndotreeToggle<CR>", silent = true, desc = "UNDOTREE" },
        --telescope key
        ["<leader>fp"] = { ":lua require('telescope').extensions.projects.projects()<CR>", desc = "project search" },
        ["<leader>ft"] = { ":TodoTelescope<CR>", desc = "todo_search" },
        --browse key
        ["<m-o>"] = { "<cmd>BrowseBookmarks<cr>", desc = "browse_bookmarks" },
        ["<m-i>"] = { "<cmd>BrowseInputSearch<cr>", desc = "google search" },
        ["<leader>zC"] = { ":CalendarT<CR>", desc = "CalendarT" },
        -- ["<leader>#"] = { ":lua require('telekasten').show_tags()<CR>", desc="cast"},
        ["<leader>zr"] = { ":lua require('telekasten').rename_note()<CR>", desc = "rename_note" },
        ["<F2>"] = { ":Repl ipython<CR>", desc = "IPYTHON" },
        ["ff"] = { ":ReplRunCell<CR>", desc = "Run cell" },
        ["<leader>r"] = { "<Plug>ReplSendLine", desc = "send line" },
        --ultisnip mapping
        -- ["ff"] = { "UltiSnipsJumpForwardTrigger", desc="Ulti_forward"},
        -- ["bb"] = { "UltiSnipsJumpBackwardTrigger", desc="Ulti_backward"},
        ["<C-C>"] = { '"+y', desc = "copy to global buffer" },
        ["<p>"] = { '"+p', desc = "paste from global buffer" },
        ["<S-l>"] = {
            function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc =
        "Next buffer" },
        ["<S-h>"] = {
            function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
            desc = "Previous buffer",
        },
        -- tables with the `name` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<leader>b"] = { name = "Buffers" },
        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    },
    x = {
        ["<leader>sf"] = { ":require('spectre').open_visual { select_word = true }<CR>", desc = "Spectre (current word)" },
    },
    t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
    },
}

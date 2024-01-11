-- Keymaps for better default experience

-- See `:help vim.keymap.set()`
local map = vim.keymap.set

-- Disable <Space> in normal and visual mode for better map-leader usability
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Better up/down - deals with word wrap
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Clear search, diff update and redraw
-- taken from runtime/lua/_editor.lua
map(
  "n",
  "<leader>ur",
  "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
  { desc = "Redraw / clear hlsearch / diff update" }
)

-- Lazy and Mason
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
map("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Mason" })

-- Window Management
map("n", "<leader>|", ":vsplit<CR>", { silent = true, desc = "Split window vertically" })
map("n", "<leader>-", ":split<CR>", { silent = true, desc = "Split window horizontally" })

-- Telescope keymaps
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
map('n', '<leader>fg', builtin.live_grep, { desc = "Grep files" })
map('n', '<leader>fb', builtin.buffers, { desc = "Find buffers" })

--[[ Toggle Options ]]
                       -------------------------------------------------------
-- Load toggle functions from utils
local toggle = require('utils.toggle')

-- Spelling and Word wrap
map("n", "<leader>us", toggle.spell, { desc = "Toggle Spelling" })
map("n", "<leader>uw", toggle.wrap, { desc = "Toggle Word Wrap" })

-- Git signs
map('n', '<leader>ub', toggle.git_blame, { desc = 'Toggle Git line blame' })

-- Indent scope
map('n', '<leader>ui', toggle.indent_scope, { desc = 'Toggle indent scope' })

-- Search keymaps
map('n', '<leader>sh', builtin.help_tags, { desc = "Search help tags" })
map('n', '<leader>sk', builtin.keymaps, { desc = "Search keymaps" })

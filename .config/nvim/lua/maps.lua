local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end
-- <leader> = the space key
-- vim.g.mapleader = " " -- change the " " to your preferred leader key

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- Insert mode mappings
map("i", "<C-e>", "<C-o>$") -- Go to the end of the line in insert mode
map("i", "<C-b>", "<C-o>0") -- Go to the beginning of the line in insert mode
map("i", "<C-x>", "<C-o>d") -- Cut in insert mode
map("i", "<C-c>", "<C-o>y") -- Copy in insert mode
map("i", "<C-v>", "<C-o>p") -- Paste in insert mode
map("i", "<C-u>", "<C-o>u") -- Undo in insert mode

-- keymap for commenting with vim-commentary

map("x", "gc", "<Plug>Commentary")
map("n", "<leader>gc", "<Plug>CommentaryLine")
-- Windows
map("n", "<leader>p", "<CMD>vsplit<CR>")
map("n", "<leader>n", "<CMD>split<CR>")

-- NeoTree
map("n", "<leader>nt", "<CMD>Neotree toggle<CR>")
map("n", "<leader>nf", "<CMD>Neotree focus<CR>")

-- Telescope : see the configs/telescope.lua file
-- Buffer
map("n", "<TAB>", "<CMD>bnext<CR>")
map("n", "<S-TAB>", "<CMD>bprevious<CR>")

-- Terminal
map("n", "<leader>th", "<CMD>ToggleTerm size=10 direction=horizontal<CR>")
map("n", "<leader>tv", "<CMD>ToggleTerm size=80 direction=vertical<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

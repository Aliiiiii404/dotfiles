local global = vim.g
local o = vim.o

-- mapleader (see maps.lua for keymaps)
global.mapleader = " "
global.maplocalleader = " "

-- Editor options
o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus"
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.encoding = "UTF-8"
o.ruler = true
o.mouse = "a"
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.showcmd = true
o.showmatch = true
o.inccommand = "split"
o.splitbelow = "splitright"
o.termguicolors = true
o.winminheight = 0
o.winminwidth = 0
o.completeopt = "menuone,noselect"

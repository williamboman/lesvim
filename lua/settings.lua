vim.cmd("set iskeyword+=-") -- treat dash separated words as a word text object"
vim.cmd("set shortmess+=c") -- Don't pass messages to |ins-completion-menu|.
vim.cmd("set inccommand=split") -- Make substitution work in realtime
vim.cmd("set clipboard+=unnamedplus") -- Make substitution work in realtime
vim.o.title = true
TERMINAL = vim.fn.expand("$TERMINAL")
vim.cmd('let &titleold="' .. TERMINAL .. '"')
vim.o.hidden = true --Do not save when switching buffers
vim.o.titlestring = "%<%F%=%l/%L - nvim"
vim.wo.wrap = true -- Display long lines as just one line
vim.cmd("set whichwrap+=<,>,[,],h,l") -- move to next line with theses keys
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.cmdheight = 2 -- More space for displaying messages
vim.cmd("set colorcolumn=99999") -- fix indentline for now
vim.o.mouse = "a" -- Enable your mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.cmd("set ts=4") -- Insert 2 spaces for a tab
vim.cmd("set sw=4") -- Change the number of space characters inserted for indentation
vim.cmd("set expandtab") -- Converts tabs to spaces
vim.bo.smartindent = true -- Makes indenting smart
vim.wo.relativenumber = true -- set relative number
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.o.updatetime = 500 -- Faster completion
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time

-- vim.o.clipboard = "unnamed" -- Copy paste between vim and everything else
vim.g.loaded_netrwPlugin = 1 -- needed for netrw gx command to open remote links in browser
vim.cmd("filetype plugin on") -- filetype detection
vim.cmd("set guifont=Cascadia\\ Code\\ Light,Hack\\ Nerd\\ Font,Adobe\\ Arabic:h18")

-- vim.o.guifont = "JetBrainsMono\\ Nerd\\ Font\\ Mono:h18"
-- vim.o.guifont = "Cascadia\\ Code\\ Light,Hack\\ Nerd\\ Font,Adobe\\ Arabic:h24"
-- vim.o.guifont = "Cascadia Code Light:h36,Hack Nerd Font,Adobe Arabic:h24"
-- vim.o.guifont = "SauceCodePro Nerd Font:h17"
-- vim.o.guifont = "FiraCode Nerd Font:h37"

-- vim.cmd([[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]])

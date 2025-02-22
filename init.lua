DATA_PATH = vim.fn.stdpath("data")
MAP = vim.api.nvim_set_keymap

--Package configurations
require("packer.loader")
require("packer.plugins")

-- Key Mappings
require("keymap")

-- Settings
require("settings")
-- require("terminal")

-- LSP
require("lsp.init")
-- require("lsp.lspinstall")
-- require("lsp.ts-js-deno")

-- vim.api.nvim_command([[autocmd BufReadPost * call FindRootDirectory()]])

--Save undo history
-- vim.cmd([[set undofile]])

-- Do not source the default filetype.vim
vim.g.did_load_filetypes = 1

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Set colorscheme (order is important here)
vim.o.termguicolors = true

-- Example config in Lua
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd([[colorscheme tokyonight]])

--Set statusbar
-- vim.g.lightline = {
-- 	colorscheme = "onedark",
-- 	active = { left = { { "mode", "paste" }, { "gitbranch", "readonly", "filename", "modified" } } },
-- 	component_function = { gitbranch = "fugitive#head" },
-- }
--
--Remap for dealing with word wrap
vim.api.nvim_set_keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

--Map blankline
vim.g.indent_blankline_char = "┊"
vim.g.indent_blankline_filetype_exclude = { "help", "packer" }
vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_char_highlight = "LineNr"
vim.g.indent_blankline_show_trailing_blankline_indent = false

-- Gitsigns
require("gitsigns").setup({
	signs = {
		add = { hl = "GitGutterAdd", text = "+" },
		change = { hl = "GitGutterChange", text = "~" },
		delete = { hl = "GitGutterDelete", text = "_" },
		topdelete = { hl = "GitGutterDelete", text = "‾" },
		changedelete = { hl = "GitGutterChange", text = "~" },
	},
})

-- Highlight on yank
vim.api.nvim_exec(
	[[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]],
	false
)

-- Y yank until the end of line
vim.api.nvim_set_keymap("n", "Y", "y$", { noremap = true })

-- Map macOS specific keybinds
if vim.fn.has("mac") == 1 then
	MAP("n", "<A-Up>", "<C-Up>", {})
	MAP("n", "<A-Down>", "<C-Down>", {})
	MAP("n", "<A-Left>", "<C-Left>", {})
	MAP("n", "<A-Right>", "<C-Right>", {})
end

-- Make runtime files discoverable to the server
local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

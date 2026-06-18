-- bread's neovim config (offline / vendored fork)
-- keymaps are in lua/config/mappings.lua
-- install a patched font & ensure your terminal supports glyphs
-- enjoy :D
--
-- HOW THIS DIFFERS FROM THE ORIGINAL:
-- vim-plug has been removed entirely. All plugins live as plain folders
-- under pack/vendor/start/, which Neovim's *built-in* package loader picks
-- up automatically at startup -- no plugin manager, no network calls, ever.
-- See https://neovim.io/doc/user/usr_05.html#05.4 for how this loading works.

local vim = vim

vim.g.start_time = vim.fn.reltime()
vim.loader.enable() --  SPEEEEEEEEEEED

-- move config and plugin config to alternate files
require("config.theme")
require("config.mappings")
require("config.options")
require("config.autocmd")

require("plugins.alpha")
-- require("plugins.autopairs")
require("plugins.barbar")
require("plugins.colorizer")
require("plugins.colorscheme")
require("plugins.comment")
-- require("plugins.fterm")
-- require("plugins.fzf-lua")
require("plugins.gitsigns")
require("plugins.lualine")
require("plugins.nvim-lint")
-- require("plugins.nvim-tree")
require("plugins.render-markdown")
-- require("plugins.treesitter")
-- require("plugins.twilight")
-- require("plugins.which-key")

vim.defer_fn(function()
		--defer non-essential configs,
		--purely for experimental purposes:
		--this only makes a difference of +-10ms on initial startup
require("plugins.autopairs")
require("plugins.fterm")
require("plugins.fzf-lua")
require("plugins.nvim-tree")
require("plugins.treesitter")
require("plugins.twilight")
require("plugins.which-key")
end, 100)

load_theme()

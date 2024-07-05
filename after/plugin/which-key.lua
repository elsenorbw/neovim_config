vim.o.timeout = true
vim.o.timeoutlen = 300
---[[
require("which-key").setup {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
}



-- Document existing key chains
require("which-key").register({
	["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
	["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
})
-- ]]

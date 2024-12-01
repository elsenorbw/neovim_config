vim.o.timeout = true
vim.o.timeoutlen = 300
---[[
require("which-key").setup {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
}


-- Document existing key chains
require("which-key").add(
  {
    { "<leader>s", group = "[S]earch" },
    { "<leader>c", group = "[C]ode" },
  }
  )
-- ]]

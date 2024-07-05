local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	local map = function(keys, func, desc)
		vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "LSP: " .. desc })
	end

	map("gd", vim.lsp.buf.definition, "[G]oto [d]efinition")
	map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
	map("gi", vim.lsp.buf.implementation, "[G]oto [I]mplementation")
	map("gr", vim.lsp.buf.implementation, "[G]oto [R]eferences")
	map("K", vim.lsp.buf.hover, "Display Hover Information")
	map("<leader>cr", vim.lsp.buf.rename, "[C]ode [R]ename Symbol")
	map("<leader>cf", vim.lsp.buf.format, "[C]ode [F]ormat Buffer")
	map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
	map("]d", vim.diagnostic.goto_next, "Next Diagnostic")
	map("[d", vim.diagnostic.goto_prev, "Previous Diagnostic")
end)

-- here you can setup the language servers
--
--
require('lspconfig').lua_ls.setup({})

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'tsserver', 'rust_analyzer', 'clangd' },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})


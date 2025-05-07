-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "gopls", "bashls", "pylsp" }
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
    }
end

lspconfig.gopls.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
	settings = {
		gopls = {
			gofumpt = true,
		},
	},
})

lspconfig.pylsp.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
	settings = {
		pylsp = {
			plugins = {
				-- pycodestyle = { enabled = false },
				-- mccabe = { enabled = false },
				-- pyflakes = { enabled = false },
				isort = { enabled = true },
				black = { enabled = true },
				-- ruff = { enabled = true },
			},
		},
	},
})


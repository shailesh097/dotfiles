local options = {
    formatters_by_ft = {
        -- lua = { "stylua" },
        -- css = { "prettier" },
        -- html = { "prettier" },
        -- go = { "gofumpt" },
        bash = { "shfmt" },
    },

    format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = false,
    },

    formatters = {
        gofumpt = {
            args = { "-" },
            stdin = true,
        },
		prettier = {
			args = { "--single-quote", "--print-width", "80" },
			stdin = true,
		},
    },
}


return options

require("lspconfig")[server].setup({
	on_attach = on_attach,
	filetypes = { "python" },
	pylsp = {
		settings = {
			pylsp = {
				configurationSources = { "flake8" },
				plugins = {
					flake8 = {
						enabled = false,
						ignore = { "E501", "E231" },
						maxLineLength = 88,
					},
					black = { enabled = true },
					autopep8 = { enabled = false },
					mccabe = { enabled = false },
					pycodestyle = {
						enabled = false,
						ignore = { "E501", "E231" },
						maxLineLength = 88,
					},
					pyflakes = { enabled = false },
				},
			},
		},
	},
})

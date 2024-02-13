local Opts = {
	ensure_installed = {
		-- lsps required by lspconfig
		"ansible-language-server",
		"awk-language-server",
		"bash-language-server",
		"clangd",
		"css-lsp",
		"docker-compose-language-service",
		"dockerfile-language-server",
		"gopls",
		"json-lsp",
		"lua-language-server",
		"marksman",
		"pyright",
		"rust-analyzer",
		"sqlls",
		"tailwindcss-language-server",
		"terraform-ls",
		"tsserver",
		"yamlls",

		-- debuggers used by nvim dap
		"delve",
		"python",
		"cppdbg",
		"bash",
		"node2",

		-- linters used by nvim-lint
		"eslint_d",
		"flake8",
		"markdownlint",
		"hadolint",
		"jsonlint",
		"shellcheck",
		"selene",
		"yamllint",
		"sqlfluff",

		-- formatters used by conform.nvim
		"prettier",
		"stylua",
		"black",
		"gofmt",
		"goimports",
		"goimports-reviser",
		"golines",
		"beautysh",
		"rustfmt",
		"buf",
		"clang_format",
		"sqlfluff ",
		"trim_whitespace",
	},
	auto_update = false,
	run_on_start = true,
	start_delay = 3000,
	debounce_hours = 5,
}

return Opts

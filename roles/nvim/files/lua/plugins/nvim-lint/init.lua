local Plugin = {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	init = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			svelte = { "eslint_d" },
			python = { "flake8" },
			markdown = { "markdownlint" },
			dockerfile = { "hadolint" },
			json = { "jsonlint" },
			sh = { "shellcheck" },
			lua = { "selene" },
			yaml = { "yamllint" },
			sql = { "sqlfluff" },
			gitcommit = { "commitlint" },
			proto = { "buf", "protolint" },
			css = { "stylelint" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}

return Plugin

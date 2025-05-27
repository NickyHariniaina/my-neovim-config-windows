return {
	"williamboman/mason.nvim",
	version = "^1.0.0",
	dependencies = {
		{ "williamboman/mason-lspconfig.nvim", version = "^1.0.0" },
	},
	config = function()
		-- import de mason
		local mason = require("mason")

		-- import de mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- import de lspconfig
		local lspconfig = require("lspconfig")

		-- active mason et personnalise les icônes
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- Liste des serveurs à installer par défaut
			ensure_installed = {
				"jdtls",
				"cssls",
				"elmls",
				"eslint",
				"graphql",
				"html",
				"lua_ls",
				"pylsp",
				"ruff",
				"rust_analyzer",
				"svelte",
				"ts_ls",
				"yamlls",
			},
			-- List des serveurs possibles : https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
			-- Vous pouvez ne pas en mettre ici et tout installer en utilisant :Mason
			-- Mais au lieu de passer par :Mason pour installer, je vous recommande d'ajouter une entrée à cette liste
			-- Ça permettra à votre configuration d'être plus portable
			-- Fonction appelée au chargement de chaque LSP de la liste ensure_installed
			-- On peut ensuite configurer chaque LSP comme on veut
			-- Les détails des configurations possibles sont disponibles ici :
			-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
			-- Quelques exemples avec Python (pylsp et ruff) ainsi que Rust ci-dessous
			--
			-- Pour désactiver un LSP il suffit de faire
			-- mon_lsp = require("lsp-zero").noop,

			-- le nom du lsp avant le `= function()` doit être le même que celui après `lspconfig.`
			-- le premier est la clé utilisée par mason_lspconfig, le deuxième est celle utilisée par lspconfig (ce sont les mêmes)
			-- ils correspondent aux entrées du ensure_installed
		})
	end,
}
-- My personal LSP to install
-- ✓ css-lsp cssls
-- ✓ elm-language-server elmls
-- ✓ eslint-lsp eslint
-- ✓ graphql-language-service-cli graphql
-- ✓ html-lsp html
-- ✓ lua-language-server lua_ls
-- ✓ python-lsp-server pylsp
-- ✓ ruff
-- ✓ rust-analyzer rust_analyzer
-- ✓ svelte-language-server svelte
-- ✓ typescript-language-server ts_ls
-- ✓ yaml-language-server yamlls

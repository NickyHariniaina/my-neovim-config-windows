vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function()
		require("NickyHariniaina.config.jdtls")
	end,
})

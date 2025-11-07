return {
	"danymat/neogen",
	-- Uncomment next line if you want to follow only stable versions
	-- version = "*",
	config = function()
		require("neogen").setup({
			enabled = true,
			input_after_comment = true,
		})
		-- setup keybinds
		local opts = { noremap = true, silent = true }
		vim.api.nvim_set_keymap("n", "<Leader>ng", ":lua require('neogen').generate()<CR>", opts)
	end,
}

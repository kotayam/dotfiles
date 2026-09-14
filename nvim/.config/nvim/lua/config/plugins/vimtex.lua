return {
	"lervag/vimtex",
	ft = { "tex", "plaintex", "bib" },
	init = function()
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_compiler_method = "latexmk"
		vim.g.vimtex_compiler_latexmk = {
			continuous = 1,
		}
	end,
}

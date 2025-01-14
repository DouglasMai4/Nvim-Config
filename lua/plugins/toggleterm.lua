return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-\>]],
			direction = "float",
			float_opts = {
				border = "curved",
			},
      shading_factor = 2,
      persist_size = true,
      start_in_insert = true,
		})

    vim.keymap.set("n", "<leader>th", function ()
      require("toggleterm.terminal").Terminal:new({ direction = "horizontal" }):toggle()
    end, { noremap = true, silent = true })
	end,
}

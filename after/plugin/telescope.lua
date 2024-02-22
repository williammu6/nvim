local telescope = require('telescope')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
vim.keymap.set('n', '<leader>pw', telescope.extensions.live_grep_args.live_grep_args, {})

end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ts',  builtin.resume, {})
--vim.keymap.set('n', '<leader>pw', builtin.live_grep, {})

vim.keymap.set("n", "<leader>pw", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

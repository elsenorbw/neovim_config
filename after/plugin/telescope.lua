local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = "[S]earch in [F]iles" })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = "[S]earch with [G]rep" })
vim.keymap.set('n', '<leader>ss', builtin.git_files, { desc = "[S]earch in [S]ource-code (git)" })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = "[S]earch in [K]eymaps" })


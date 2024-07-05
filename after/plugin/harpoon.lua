local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "[A]dd to harpoon" })
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle Harpoon List" })

vim.keymap.set("n", "<C-a>", function() harpoon:list():select(1) end, { desc = "Select 1st Harpoon File"})
vim.keymap.set("n", "<C-b>", function() harpoon:list():select(2) end, { desc = "Select 2nd Harpoon File"})
vim.keymap.set("n", "<C-c>", function() harpoon:list():select(3) end, { desc = "Select 3rd Harpoon File"})
vim.keymap.set("n", "<C-d>", function() harpoon:list():select(4) end, { desc = "Select 4th Harpoon File"})


-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)


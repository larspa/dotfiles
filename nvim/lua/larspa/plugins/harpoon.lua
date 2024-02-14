return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set(
      "n",
      "<C-e>",
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
      { desc = "Mark file with harpoon" }
    )
    keymap.set("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Mark file with harpoon" })
    keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
    keymap.set(
      "n",
      "<leader>hp",
      "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
      { desc = "Go to previous harpoon mark" }
    )

    keymap.set("n", "<C-z>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>")
    keymap.set("n", "<C-x>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>")
    keymap.set("n", "<C-c>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>")
    keymap.set("n", "<C-v>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>")
    keymap.set("n", "<C-b>", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>")
    keymap.set("n", "<C-n>", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>")
  end,
}

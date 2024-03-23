return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["<CR>"] = actions.select_default + actions.center, -- open file with centered cursor
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    vim.keymap.set("n", "<leader>pl", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    vim.keymap.set("n", "<leader>pf", "<cmd>Telescope git_files<cr>", { desc = "Fuzzy find files in git" })
    vim.keymap.set("n", "<leader>pr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    vim.keymap.set("n", "<leader>ps", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    vim.keymap.set("n", "<leader>pc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    vim.keymap.set("n", "<leader>pb", "<cmd>Telescope buffers<cr>", { desc = "Fuzzy find buffers" })
    vim.keymap.set("n", "<leader>pm", "<cmd>Telescope marks<cr>", { desc = "Fuzzy find marks" })
  end,
}

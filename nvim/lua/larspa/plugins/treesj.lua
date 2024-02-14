return {
  "Wansmer/treesj",
  keys = {
    {
      "<leader>ts",
      "<CMD>TSJToggle<CR>",
      desc = "Toggle Treesitter",
    },
    {
      "<leader>to",
      "<CMD>TSJSplit<CR>",
      desc = "Toggle Treesitter Split",
    },
    {
      "<leader>tj",
      "<CMD>TSJJoin<CR>",
      desc = "Toggle Treesitter Join",
    },
  },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("treesj").setup({
      use_default_keymaps = false,
    })
  end,
}

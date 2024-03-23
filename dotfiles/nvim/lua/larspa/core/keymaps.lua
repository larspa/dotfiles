-- set leader key to space
vim.g.mapleader = " "

---------------------
-- General Keymaps -------------------

-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>ss", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
vim.keymap.set("n", "<leader>sh", "<C-w>H", { desc = "Move window left" }) -- Move split window to left
vim.keymap.set("n", "<leader>sl", "<C-w>L", { desc = "Move window right" }) -- Move split window to right
vim.keymap.set("n", "<leader>sj", "<C-w>J", { desc = "Move window down" }) -- Move split window to down
vim.keymap.set("n", "<leader>sk", "<C-w>K", { desc = "Move window up" }) -- Move split window to up

-- tab management
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>to", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
vim.keymap.set("n", "<leader>te", "<cmd>tabe .<CR>", { desc = "Open new tab in current directory" }) --  open new tab in current directory

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move selected line down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move selected line up

-- Centered motions
vim.keymap.set("n", "n", "nzzzv") -- Next search result with centered cursor
vim.keymap.set("n", "N", "Nzzzv") -- Previous search result with centered cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Down with centered cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Up with centered cursor

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) --

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>") -- Increase vertical window size
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>") -- Decrease vertical window size
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>") -- Decrease horizontal window size
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>") -- Increase horizontal window size

local keys = { "[", "]", "{", "}", "(", ")", "'", '"', "<", ">", "`", "w" }
for _, k in ipairs(keys) do
  vim.keymap.set("n", string.format("<leader>ri%s", k), string.format("vi%sP", k)) -- [R]eplace [I]nside
  vim.keymap.set("n", string.format("<leader>ra%s", k), string.format("va%sP", k)) -- [R]eplace [A]round
end

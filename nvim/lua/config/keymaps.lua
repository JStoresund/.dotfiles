-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>ql", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix [L]ist" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use hjkl to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use hjkl to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use hjkl to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use hjkl to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<leader>wh", "<C-w><C-h>", { desc = "Window left" })
vim.keymap.set("n", "<leader>wl", "<C-w><C-l>", { desc = "Window right" })
vim.keymap.set("n", "<leader>wj", "<C-w><C-j>", { desc = "Window down" })
vim.keymap.set("n", "<leader>wk", "<C-w><C-k>", { desc = "Window up" })

-- Johan's self-made keymaps

vim.keymap.set(
  "n",
  "<leader>ec",
  "<cmd>edit ~/.config/nvim/lua/config/lazy.lua<CR>",
  { desc = "[E]dit [C]onfig (LazyVim)" }
)

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent dir in Oil" })

vim.keymap.set("n", "<leader>tp", "<cmd>MarkdownPreviewToggle<CR>", { desc = "[T]oggle Markdown [P]review" })

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-å>", builtin.oldfiles, { desc = "Search recent files" })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}
local map = vim.keymap.set
-- my diy
-- 我不要被默认 hjkl 的配置强奸！ijkl 代表上下左右，按键位置即方向
map({'n','v'}, 'h', 'i', opts)
map({'n','v'}, 'i', 'k', opts)
map({'n','v'}, 'k', 'j', opts)
map({'n','v'}, 'j', 'h', opts)
-- 有时候我不需要删除时保存到寄存器！
map({'n','v'}, 'x', '"_x', opts)
map({'n','v'}, 'dx', '"_dd', opts)
-- 恢复 windows 使用习惯
map({'i'}, '<C-v>', function() vim.api.nvim_paste(vim.fn.getreg('"'), {}, -1) end, {noremap = true})
map({'v'}, '<C-c>', 'ygv', {noremap = true})
map({'n'}, '<C-s>', '<ESC>:update<CR>', opts)
map({'i'}, '<C-s>', '<ESC>:update<CR>gi', opts)
map({'v'}, '<C-s>', '<ESC>:update<CR>gv', opts)
map({'n', 'v', 'i'}, '<C-w>', '<ESC>:q<CR>', opts)

-- Hint: see `:h vim.map.set()`
map('n', '<C-Up>', '<C-w>k', opts)
map('n', '<C-Down>', '<C-w>j', opts)
map('n', '<C-Left>', '<C-w>h', opts)
map('n', '<C-Right>', '<C-w>l', opts)
map('n', '<S-Up>', ':resize -2<CR>', opts)
map('n', '<S-Down>', ':resize +2<CR>', opts)
map('n', '<S-Left>', ':vertical resize -2<CR>', opts)
map('n', '<S-Right>', ':vertical resize +2<CR>', opts)

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

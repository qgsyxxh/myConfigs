local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- space+e 打开nvim-tree
vim.g.mapleader = " "
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- space+d 显示报错
map('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float(nil, { focusable = false })<CR>',
	{ noremap = true, silent = true })

-- 添加 option+上下移动当前行
map('n', '<A-Up>', ':m .-2<CR>==', opts)
map('n', '<A-Down>', ':m .+1<CR>==', opts)
map('i', '<A-Up>', '<Esc>:m .-2<CR>==gi', opts)
map('i', '<A-Down>', '<Esc>:m .+1<CR>==gi', opts)
map('v', '<A-Up>', ':m \'<-2<CR>gv=gv', opts)
map('v', '<A-Down>', ':m \'>+1<CR>gv=gv', opts)

-- 添加 V模式下 Ctrl+C 复制 Ctrl+X 剪切
map('v', '<C-c>', '"+y', opts)
map('v', '<C-x>', '"+d', opts)

-- 添加 cmd+/ 快速注释
map('n', '<C-/>', 'gcc', opts)
map('v', '<C-/>', 'gc', opts)

-- buffer move
map('n', '<leader>[', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>]', '<Cmd>BufferNext<CR>', opts)
map('n', '<leader>w', '<Cmd>BufferClose<CR>', opts)
map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)

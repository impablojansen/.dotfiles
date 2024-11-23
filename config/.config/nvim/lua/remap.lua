local map = vim.keymap.set

vim.g.mapleader = " "

map("n", "<leader>pv", vim.cmd.Ex)

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- COPIA SEM PERDER DO BUFFER
map("x", "<leader>p", "\"_dP")

-- COPIAR PRO CLIPBOARD DO SISTEMA
map("n", "<leader>y", "\"+y")
map("v", "<leader>y", "\"+y")
map("n", "<leader>Y", "\"+y")

-- FORMATAR O CÓDIGO
map("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- SUBTITUIR
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- BUFFERS
map("n", "<Tab>", ":bnext<CR>")
map("n", "<leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>")

local options = {
    clipboard = "unnamedplus",
    colorcolumn = "80",
    completeopt = "menu,menuone,noselect",
    cursorline = true,
    expandtab = true,
    hlsearch = false,
    ignorecase = true,
    mouse = "a",
    number = true,
    relativenumber = true,
    shiftround = true,
    shiftwidth = 4,
    smartcase = true,
    softtabstop = 4,
    splitbelow = true,
    splitright = true,
    wrap = false,
}

for option, value in pairs(options) do
    vim.opt[option] = value
end

vim.g.mapleader = ","

-- Toggle nvim-tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {})

-- Toggle cursorcolumn
vim.keymap.set("n", "<leader>cc", ":set cursorcolumn!<CR>", {})

-- Toggle hlsearch
vim.keymap.set("n", "<leader>hl", ":set hlsearch!<CR>", {})

-- Toggle relativenumber
vim.keymap.set("n", "<leader>rn", ":set relativenumber!<CR>", {})

-- Remove trailing whitespace
vim.keymap.set("n", "<leader>ws", ":%s/\\s\\+$//g<CR>", {})

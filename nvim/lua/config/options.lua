-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
--- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional optons here
--
vim.cmd([[
if exists("g:neovide")
let g:neovide_scale_factor = 1.5
endif
]])

vim.cmd([[
augroup SpellCheck
    autocmd!
    autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_gb
    autocmd BufRead,BufNewFile *.md inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
augroup END
]])

vim.cmd([[
set noswapfile
]])

vim.opt.autochdir = true

if vim.g.neovide == true then
  vim.api.nvim_set_keymap(
    "n",
    "<C-=>",
    ":lua vim.g.neovide_scale_factor = math.min(vim.g.neovide_scale_factor + 0.1,  1.5)<CR>",
    { silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-->",
    ":lua vim.g.neovide_scale_factor = math.max(vim.g.neovide_scale_factor - 0.1,  0.5)<CR>",
    { silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-+>",
    ":lua vim.g.neovide_transparency = math.min(vim.g.neovide_transparency + 0.05, 1.5)<CR>",
    { silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-_>",
    ":lua vim.g.neovide_transparency = math.max(vim.g.neovide_transparency - 0.05, 0.0)<CR>",
    { silent = true }
  )
  vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1.5<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-)>", ":lua vim.g.neovide_transparency = 0.9<CR>", { silent = true })
end

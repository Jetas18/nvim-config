vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Example using a list of specs with the default options


require('lazy').setup('jetas.plugins') 



require("jetas.plugins.configs.nvimtree")
require("jetas.lsp-conf")


vim.cmd[[set number relativenumber]]

local tele = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tele.find_files, {})
vim.cmd [[set clipboard+=unnamedplus]]

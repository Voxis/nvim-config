-- set up lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = {
  change_detection = {
    notify = false,
  },
}

require("lazy").setup("plugins", opts)

require('zzy.options')

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

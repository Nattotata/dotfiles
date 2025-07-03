-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local options = {
  wrap = true,
  conceallevel = 0,
  cole = 0,
  concealcursor = "nc",
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

vim.diagnostic.config({ signs = false })
-- vim.o.autochdir = true
vim.g.lazyvim_blink_main = false

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Always yank to system clipboard (LazyVim disables this over SSH by default)
vim.opt.clipboard = "unnamedplus"
if vim.env.SSH_CONNECTION or vim.env.SSH_TTY then
  -- Over SSH: send yanks to the local terminal's clipboard via OSC 52
  vim.g.clipboard = "osc52"
end

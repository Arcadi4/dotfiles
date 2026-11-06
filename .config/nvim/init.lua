-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- theme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

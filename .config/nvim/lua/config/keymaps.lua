local map = vim.keymap.set
local del = vim.keymap.del

-- Ctrl+P -> File finder
map("n", "<C-p>", function()
  require("telescope.builtin").find_files()
end, { desc = "Find Files" })

-- Ctrl+Shift+F -> Search in project
map("n", "<C-S-f>", function()
  require("telescope.builtin").live_grep()
end, { desc = "Search in Project" })

-- Ctrl+B -> Toggle file explorer sidebar
map("n", "<C-b>", function()
  require("neo-tree.command").execute({ toggle = true })
end, { desc = "Toggle Explorer Sidebar" })

-- Ctrl+` -> Toggle terminal
map({ "n", "t" }, "<C-`>", function()
  require("toggleterm").toggle()
end, { desc = "Toggle Terminal" })

-- Alt+Up/Down -> Move lines (VSCode style)
map("n", "<A-Up>", "<cmd>m .-2<CR>==", { desc = "Move Line Up" })
map("n", "<A-Down>", "<cmd>m .+1<CR>==", { desc = "Move Line Down" })
map("i", "<A-Up>", "<Esc><cmd>m .-2<CR>==gi", { desc = "Move Line Up" })
map("i", "<A-Down>", "<Esc><cmd>m .+1<CR>==gi", { desc = "Move Line Down" })
map("v", "<A-Up>", "<cmd>m '<-2<CR>gv=gv", { desc = "Move Lines Up" })
map("v", "<A-Down>", "<cmd>m '>+1<CR>gv=gv", { desc = "Move Lines Down" })

-- Ctrl+D -> Duplicate line (note: overrides default page-down)
map("n", "<C-d>", "mzyyp`z", { desc = "Duplicate Line" })
map("i", "<C-d>", "<Esc>mzyyp`zzi", { desc = "Duplicate Line" })
map("v", "<C-d>", function()
  local start = vim.fn.getpos("'<")
  local finish = vim.fn.getpos("'>")
  vim.cmd("normal! gv\"_d")
  local lines = {}
  for i = start[2], finish[2] do
    table.insert(lines, vim.fn.getline(i))
  end
  vim.fn.setline(start[2] - 1, lines)
  vim.cmd("normal! `<")
end, { desc = "Duplicate Selection" })

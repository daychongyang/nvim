-- https://neovim.io/doc/user/options.html

-- When set to "dark" or "light", adjusts the default color groups for that background type.
vim.g.background = "dark"
-- If in Insert, Replace or Visual mode put a message on the last line.
vim.opt.showmode = false
-- Make a backup before overwriting a file.
vim.opt.backup = false
vim.opt.writebackup = false
-- Time in milliseconds to wait for a key code sequence to complete.
vim.opt.timeoutlen = 300
-- Enables 24-bit RGB color in the Terminal UI.
vim.opt.termguicolors = true
-- List mode: By default, show tabs as ">", trailing spaces as "-", and non-breakable space characters as "+".
vim.opt.list = true
-- Strings to use in 'list' mode and for the |:list| command.
vim.opt.listchars:append "eol:↴"
-- Use a swapfile for the buffer.
vim.opt.swapfile = false
-- File-content encoding for the current buffer.
vim.opt.fileencoding = "utf-8"
-- Print the line number in front of each line.
vim.opt.number = true
-- Show the line number relative to the line with the cursor in front of each line.
vim.opt.relativenumber = false
-- Highlight the text line of the cursor with CursorLine (Screen-line at the cursor).
vim.opt.cursorline = true
-- When and how to draw the signcolumn.
vim.opt.signcolumn = "yes"
-- Highlight the screen columns with ColorColumn.
vim.opt.colorcolumn = "120"
-- How to display the text.
vim.opt.wrap = false
-- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
vim.opt.expandtab = true
-- Number of spaces that a <Tab> in the file counts for.
vim.opt.tabstop = 2
-- Number of spaces to use for each step of (auto)indent.
vim.opt.shiftwidth = 2
-- Enables mouse support.
vim.opt.mouse = "a"
-- When on, splitting a window will put the new window right of the current one.
vim.opt.splitright = true

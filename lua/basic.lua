-- https://neovim.io/doc/user/quickref.html#option-list

-- When set to "dark" or "light", adjusts the default color groups for that background type.
vim.g.background = "dark"
-- If in Insert, Replace or Visual mode put a message on the last line.
vim.g.showmode = false
-- Make a backup before overwriting a file.
vim.g.backup = false
vim.g.writebackup = false
-- Time in milliseconds to wait for a key code sequence to complete.
vim.g.timeoutlen = 500

-- Use a swapfile for the buffer.
vim.bo.swapfile = false
-- File-content encoding for the current buffer.
vim.bo.fileencoding = "utf-8"

-- Print the line number in front of each line.
vim.wo.number = true
-- Highlight the text line of the cursor with CursorLine (Screen-line at the cursor).
vim.wo.cursorline = true
-- When and how to draw the signcolumn.
vim.wo.signcolumn = "yes"
-- Highlight the screen columns with ColorColumn.
vim.wo.colorcolumn = "80"
-- How to display the text.
vim.wo.wrap = false

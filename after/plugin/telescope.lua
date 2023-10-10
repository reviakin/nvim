local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})   -- all file search
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})    -- grep
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})  --
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})      --
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})    --
vim.keymap.set('n', '<leader>fb', builtin.git_branches, {}) -- all brnaches
-- vim.keymap.set('n', '<leader>fgs', builtin.git_stash, {})   -- all stashes
vim.keymap.set('n', '<leader>ps', function()
  -- TODO fix when intarrapt
  builtin.grep_string({ search = vim.fn.input('Grep > ') })
end)

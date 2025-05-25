return {
  'ThePrimeagen/harpoon',
  config = function()
    vim.api.nvim_set_keymap('n', '<A-a>', ":lua require('harpoon.mark').add_file()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<A-m>', ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true })

    vim.api.nvim_set_keymap('n', '<A-.>', ":lua require('harpoon.ui').nav_next()", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<A-,>', ":lua require('harpoon.ui').nav_prev()", { noremap = true, silent = true })

    for i = 1, 9 do
      local key_seq = string.format('<A-%d>', i)
      local command = string.format(":lua require('harpoon.ui').nav_file(%d)<CR>", i)
      vim.api.nvim_set_keymap('n', key_seq, command, { noremap = true, silent = true })
    end
  end,
}

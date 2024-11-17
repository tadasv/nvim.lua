return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
  },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader> ', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

    -- configure z to use telescope to find notes
    local output = vim.fn.system("z config root")
    local exit_code = vim.v.shell_error
    output = output:gsub("%s+$", "") -- trim whitespace at the end of the command output
    if exit_code == 0 then
      vim.keymap.set('n', '<leader>zf', function()
        return builtin.find_files({
          search_dirs = {
            output,
          },
          prompt_title = 'Find Z Notes',
        })
        end, {})
      vim.keymap.set('n', '<leader>zg', function()
        return builtin.live_grep({
          search_dirs = {
            output,
          },
          prompt_title = 'Find Z Notes',
        })
        end, {})
    end
  end,
}

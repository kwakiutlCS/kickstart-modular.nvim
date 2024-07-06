return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      -- suggestion = { enabled = false },
      -- panel = { enabled = false },
    }
  end,

  vim.api.nvim_set_keymap('i', '<C-y>', 'copilot#Accept("<CR>")', { silent = true, expr = true }),
  vim.keymap.set('n', '<leader>cc', 'ggVG<Cmd>CopilotChatToggle<CR>', { desc = 'Copilot' }),
  vim.keymap.set('n', '<leader>ce', 'ggVG<Cmd>CopilotChatExplain<CR>', { desc = 'Copilot explain' }),
  vim.keymap.set('n', '<leader>ct', 'ggVG<Cmd>CopilotChatTest<CR>', { desc = 'Copilot test' }),
  vim.keymap.set('n', '<leader>cr', 'ggvG<Cmd>CopilotChatOptimize<CR>', { desc = 'Copilot test' }),
}

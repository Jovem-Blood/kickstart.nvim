return {
  'ray-x/lsp_signature.nvim',
  event = 'InsertEnter',
  opts = {
    bind = true,
    always_trigger = true,
    handler_opts = {
      border = 'rounded',
    },
  },
}

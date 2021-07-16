require('lualine').setup {
  options = {
    theme = 'tokyonight'
  }
}

local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
	require('completion').on_attach(client, bufnr)
end

-- Autocomponent config
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.g.completion_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }

-- Better UI for LSP functions
local saga = require 'lspsaga'
saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}

-- Language servers
nvim_lsp.tsserver.setup {
	on_attach = on_attach
}

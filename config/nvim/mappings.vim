" Leader key
let mapleader=","

" Show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>

" Show signature
nnoremap <silent> gs :Lspsaga signature_help<CR>

" Show LSP finder
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>

" Definition preview
nnoremap <silent> gd :Lspsaga preview_definition<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>gf <cmd>Telescope git_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

call plug#begin()

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Themes 
Plug 'folke/tokyonight.nvim'

" Lualine (Status bar)
Plug 'hoob3rt/lualine.nvim'

" Icons
Plug 'kyazdani42/nvim-web-devicons'

" Language Server
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

" Autocomplete
Plug 'nvim-lua/completion-nvim'

" Auto close brackets
Plug 'rstacruz/vim-closer'

call plug#end()


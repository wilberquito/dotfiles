syntax on
set encoding=utf-8
set cursorline
let mapleader = " "

"tab settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

"local vim configuration
set exrc

"line numbers
set relativenumber
set number

"search 
set hlsearch
set incsearch

"fast swapping
set hidden

"stop err bells
set noerrorbells

"stop wrapping lines
set nowrap

"search ignoring case sensitive
set ignorecase

"handle buffers
set noswapfile
set nobackup

"scroll
set scrolloff=6

"give more space for displaying messages
set cmdheight=2

"show real time keyboard interaction
set showcmd

"very useful for ident files
autocmd Filetype yaml set cursorcolumn
autocmd Filetype yml set cursorcolumn
autocmd Filetype python set cursorcolumn

call plug#begin('~/.vim/plugged')

"easy comments
Plug 'tpope/vim-commentary'

"telescope
Plug 'nvim-treesitter/nvim-treesitter'

Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim'

Plug 'gruvbox-community/gruvbox'

"status bar
Plug 'vim-airline/vim-airline'

"set cursor in file last place
Plug 'farmergreg/vim-lastplace'

"file navigation
Plug 'scrooloose/nerdtree'

"closes pair at new open
Plug 'jiangmiao/auto-pairs'

"js
Plug 'pangloss/vim-javascript'

"svelte
Plug 'evanleck/vim-svelte'
Plug 'othree/html5.vim'

"close html tags
Plug 'alvan/vim-closetag'

"intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"prettier
Plug 'prettier/vim-prettier', {'do': 'npm install'}

"highligh yanked conted
Plug 'machakann/vim-highlightedyank'

cal plug#end()

colorscheme gruvbox

"vim remap
nnoremap <leader>= <C-w>v
nnoremap <leader>- <C-w>s
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>q <C-w>q
nnoremap <leader>w <cmd>w<cr>
nnoremap <leader>e <cmd>q!<cr>
nnoremap <leader>x <cmd>x<cr>

"let moves lines up and down in visual mode
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

"set cursor in last position when yanking in visual mode
vnoremap y mcy`c

"find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"nerd tree 
nnoremap <leader>t <cmd>NERDTreeToggle<cr>
let NERDTreeQuitOnOpen=1

"vim svelte option 
let g:svelte_indent_script = 0
let g:svelte_indent_style = 0

" CoC intellisense
" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

"prettier settings
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat_require_pragma = 0
let g:closetag_filetypes = 'html,xhtml,phtml,svelte'
au BufWritePre *.css,*.svelte,*.pcss,*.html,*.ts,*.js,*.json PrettierAsync
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')


set number relativenumber
set tabstop=4 softtabstop=4 noexpandtab shiftwidth=4 smarttab
set nocompatible              " be iMproved, required
filetype off                  " required

" neovim customizations
"
let g:molokai_original = 1

" plugins
"
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'easymotion/vim-easymotion'

Plug 'terryma/vim-multiple-cursors'

Plug 'dense-analysis/ale'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}

Plug 'puremourning/vimspector'

Plug 'voldikss/vim-floaterm'

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"

" Key mapping
let mapleader = " "

nmap <C-\>e :NERDTreeToggle<CR>

nmap <C-\>R :source ~/.config/nvim/init.vim<CR>

nmap <C-\>n :tabnew<CR>
nmap <C-\><Right> :tabnext<CR>
nmap <C-\><Left> :tabprevious<CR>
nmap <C-\>x :w<CR>:tabclose<CR>
nmap <C-\>q :tabclose<CR>
nmap <C-\>z :w<CR>:tabe<CR>
nmap <C-\>s :w<CR>
nmap <C-\>S :w
nmap <C-\>p :Files<CR>
nmap <C-\>f :Ag<CR>
nmap <C-\>t :FloatermToggle<CR>
nmap <C-\>, :e ~/.config/nvim/init.vim<CR>

nmap <F5> :CocCommand java.debug.vimspector.start<CR>
nmap <C><F5> <Plug>VimspectorContinue<CR>
nmap <C-\><F5> <Plug>VimspectorRestart<CR>
nmap <S><F5> <Plug>VimspectorStop<CR>
nmap <C-\>d <Plug>VimspectorToggleBreakpoint<CR>
nmap <C-\>rd <Plug>VimspectorRunToCursor<CR>
nmap <F10> <Plug>VimspectorStepOver<CR>
nmap <F9> <Plug>VimspectorStepInto<CR>
nmap <F11> <Plug>VimspectorStepOut<CR>
nmap <C-\><F10> <Plug>VimspectorJumpToNextBreakpoint<CR>
nmap <C-\><F9> <Plug>VimspectorJumpToPreviousBreakpoint<CR>

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" air-line
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

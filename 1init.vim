" basic syntax
syntax on

" turn off sound effect
set noerrorbells
set guicursor=
set scrolloff=8
set number
set relativenumber
set nu
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
" -> theme
set t_Co=256
set cursorline
set clipboard=unnamed
lang en_US.UTF-8

" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lighgray
call plug#begin('~/.vim/plugged')
vertical resize=30

"rust 
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

" -> Fuzzy finder ->
" https://github.com/junegunn/fzf.vim ->
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" TS -> 
Plug 'leafgarland/typescript-vim'

" TSX -> 
Plug 'ianks/vim-tsx'

" faster grep 
Plug 'jremmen/vim-ripgrep'

Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
" git setup ->
"
" https://github.com/tpope/vim-fugitive ->
Plug 'tpope/vim-fugitive'

" show a current branck in the bottom ->
"https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1

" git checkout -> 
" https://github.com/stsewd/fzf-checkout.vim ->
Plug 'stsewd/fzf-checkout.vim'

" JS/TS/React ->
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Amazing vim's them ->
" https://github.com/ayu-theme/ayu-vim -> 
"Plug 'ayu-theme/ayu-vim'
Plug 'gruvbox-community/gruvbox'
"Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
" auto forma -> 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
let g:coc_global_extensions = [
    \'coc-json', 
    \'coc-go', 
    \'coc-tsserver', 
    \'coc-tailwindcss', 
    \'coc-svg', 
    \'coc-spell-checker', 
    \'coc-stylelint', 
    \'coc-prettier', 
    \'coc-highlight', 
    \'coc-eslint', 
    \'coc-emmet', 
    \'coc-css', 
    \'coc-cssmodules']

" auto complete
" Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
call plug#end()

" place fzf in the middle of the screen -> 
let g:fzf_layout = { 'window': { 'width': 1, 'height':0.8 }}
" reverse a list file -> 
let $FZF_DEFAULT_OPTS = '--reverse'


" THEME ->
set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
if executable('rg')
    let g:rg_derive_root='true'
endif

" Our remaps
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
" FZF -> 
nnoremap <leader>pf :Files<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-f> :Rg 
" on grep ->
nnoremap <C-j> :cnext<CR> 
nnoremap <C-k> :cprev<CR> 
nnoremap <C-o> :copen<CR> 

" fzf/git checkout ->
nnoremap <leader>gc : GCheckout<CR>

" get from right ->
nmap <leader>gk :diffget //3<CR>
" get from left <-
nmap <leader>gj :diffget //2<CR>
nmap <leader>gs :G<CR>
" CocSearch -> 
nmap <leader>rr <Plug>(coc-rename)
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

" YCM
"nnoremap <silent>gd :YcmCompleter GoTo<CR>
"nnoremap <silent>gf :YcmCompleter FixIt<CR>

"" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Diagnostic list
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" remap autocomplition coc
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

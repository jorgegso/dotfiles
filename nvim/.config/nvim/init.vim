" ██▓ ███▄    █  ██▓▄▄▄█████▓      ██▒   █▓ ██▓ ███▄ ▄███▓
"▓██▒ ██ ▀█   █ ▓██▒▓  ██▒ ▓▒     ▓██░   █▒▓██▒▓██▒▀█▀ ██▒
"▒██▒▓██  ▀█ ██▒▒██▒▒ ▓██░ ▒░      ▓██  █▒░▒██▒▓██    ▓██░
"░██░▓██▒  ▐▌██▒░██░░ ▓██▓ ░        ▒██ █░░░██░▒██    ▒██ 
"░██░▒██░   ▓██░░██░  ▒██▒ ░  ██▓    ▒▀█░  ░██░▒██▒   ░██▒
"░▓  ░ ▒░   ▒ ▒ ░▓    ▒ ░░    ▒▓▒    ░ ▐░  ░▓  ░ ▒░   ░  ░
" ▒ ░░ ░░   ░ ▒░ ▒ ░    ░     ░▒     ░ ░░   ▒ ░░  ░      ░
" ▒ ░   ░   ░ ░  ▒ ░  ░       ░        ░░   ▒ ░░      ░   
" ░           ░  ░             ░        ░   ░         ░   
"                              ░       ░                 			    
"---------------------------------vim config---------------------------- 
syntax on 
set number 
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L

"config para nerdCommenter
filetype plugin on
"Get out of insert mode 
" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
imap <C-c> <Esc>l
"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line 
xnoremap K :move '<-2<CR>gv-gv 
xnoremap J :move '>+1<CR>gv-gv 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 
" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

"-------------------------------Sources-------------------------------
source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/plugins/plug-config.vim
"--------------------------------Plugins Config--------------------------------------------
"save file
"guardar archivo
nmap <leader>w :w <CR>
"cerrar ventana
"close current  window
nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands 
"comandos de busqueda
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>

"configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
"abrir Nerdtree
"open nerdtree
nmap <Leader>e :NERDTreeToggle<CR>

"open cocExplorer 
"Buscar dos carácteres con easymotion
"Search for two chars with easymotion
nmap <Leader>s <Plug>(easymotion-s2)
"easymotion
"nmap f <Plug>(easymotion-overwin-f2)
"mi taps
map <Tab> :nohlsearch<CR>
" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>
"close buffer
"cerrar buffer
nmap <leader>bd :bdelete<CR>
"--Themes config--
set termguicolors
" autoComplet


"" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

	"Pretier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
"vmap<leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected) 

"--------------------------------------------
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js'
"nerdCommenter
nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>
nnoremap <silent> <leader>c{ V{:call NERDComment('x', 'toggle')<CR>

"find and replace
nnoremap <CR> :noh<CR><CR>

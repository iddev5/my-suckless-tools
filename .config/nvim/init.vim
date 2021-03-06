set number
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set mouse=a

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'ycm-core/YouCompleteMe'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

colorscheme onehalfdark

nnoremap <leader>f :NERDTreeToggle<CR>

noremap <silent> <C-Left> :vertical resize +3<CR> 
noremap <silent> <C-Right> :vertical resize -3<CR> 
noremap <silent> <C-Up> :resize +3<CR> 
noremap <silent> <C-Down> :resize -3<CR>

let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1

let g:deoplete#enable_at_startup=1

highlight VertSplit ctermbg=NONE guibg=NONE


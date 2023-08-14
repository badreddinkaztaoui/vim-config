set scrolloff=8
set number
set relativenumber
set noet ci pi sts=0 sw=4 ts=4
set mouse=a

call plug#begin('~/.vim/plugged')
Plug '42Paris/42header'
Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()

let g:user42 = 'bkaztaou'
let g:mail42 = 'bkaztaou@student.1337.ma'
let g:syntastic_c_checkers = ['norminette', 'gcc']
let g:syntastic_aggregate_errors = 1
let g:syntastic_c_norminette_exec = 'norminette'
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 0

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0

colorscheme tokyonight

let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <Leader><CR> :so ~/.vimrc<CR>
nnoremap <C-p> :NERDTree<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-h> :Stdheader<CR>
nnoremap <C-n> :Norminette<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

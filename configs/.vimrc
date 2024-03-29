" 快速加载菜单项
let do_syntax_sel_menu = 1
let do_no_lazyload_menus = 1
if exists('*minpac#init')
    " Minpac is loaded.
    call minpac#init()
    call minpac#add('k-takata/minpac', {'type': 'opt'})

    " Other plugins
    call minpac#add('tpope/vim-eunuch')
    call minpac#add('yegappan/mru')
    call minpac#add('preservim/nerdtree')
    call minpac#add('mbbill/VimExplorer')
    call minpac#add('morhetz/gruvbox')
endif

if has('eval')
    " Minpac commands
    command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
    command! PackClean packadd minpac | source $MYVIMRC | call minpac#clean()
    command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
endif

" 鼠标支持
set mouse-=a
set number
" 自动存盘
set autowrite

" 多窗口，快捷键映射
nnoremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
nnoremap <C-S-Tab> <C-W>W
inoremap <C-S-Tab> <C-O><C-W>W


" 最近使用文件

if !has('gui_running')
    " 设置⽂本菜单
    if has('wildmenu')
        set wildmenu
        set cpoptions-=<
        set wildcharm=<C-Z>
        nnoremap <F10> :emenu <C-Z>
        inoremap <F10> <C-O>:emenu <C-Z>
    endif
endif
	
" 选择主题
syntax on
set background=dark
colorscheme gruvbox
set backspace=2
let NERDTreeShowHidden=1

set ts=2
set expandtab
set autoindent
nnoremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
nnoremap <C-S-Tab> <C-W>W
inoremap <C-S-Tab> <C-O><C-W>W

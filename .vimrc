syntax on

set nocompatible

set nu

filetype on
filetype plugin on
filetype plugin indent on

set history=1000

"set background=dark

set backspace=2
set linebreak
set gdefault
set laststatus=2
syn on
set ai!

set autoindent
"set smartindent

set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

set showmatch

set expandtab

set guioptions-=T

set vb t_vb=

set ruler

set nohls

"set mouse=a

set cindent

set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

set incsearch

if &term=="xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif

"set autochdir

set so=7
set wildmenu
set lz
set hid
set magic
"set ignorecase
set noerrorbells
set t_vb=

set mat=8
set hlsearch

set wildmode=list:full

set completeopt=longest,menu

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set fdm=manual  "设置代码折叠

execute pathogen#infect()

"ctags
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

"MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
"let g:miniBufExplorerMoreThanOne=1

"NERDTree
let NERDTreeWinPos ="left"                      "将NERDTree的窗口设置在gvim窗口的左边  
let NERDTreeShowBookmarks=1                     "当打开NERDTree窗口时，自动显示Bookmarks  

"Taglist
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=0
let Tlist_Show_Menu=1

"syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_python_checkers = ['pyflakes']
let syntastic_check_on_open=1

"winmanager
"let g:winManagerWindowLayout = "NERDTree,TagList"
"let g:winManagerWidth = 30
"let g:NERDTree_title="[NERDTree]"  
"let g:winManagerWindowLayout="NERDTree|TagList"  
  
"function! NERDTree_Start()  
"    exec 'NERDTree'  
"endfunction  
  
"function! NERDTree_IsValid()  
"    return 1  
"endfunction  

"filetype plugin on
"set ofu=syntaxcomplete#Complete
"autocmd FileType python　set
"omnifunc=pythoncomplete#Complete
"autocmd FileType python runtime! autoload/pythoncomplete.vim

filetype plugin on  
autocmd FileType python set omnifunc=pythoncomplete#Complete

"pydiction 1.2 python auto complete
filetype plugin on
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
""defalut g:pydiction_menu_height == 15
let g:pydiction_menu_height = 5 

"hotkeys
map <F2> :silent! NERDTreeToggle<CR>
map <F3> :silent! TlistToggle<CR>
nnoremap <F4> :call g:Jsbeautify()<CR>
nmap bt :TMiniBufExplorer<CR>
nmap wm :WMToggle<CR>  


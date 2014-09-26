execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

"------------------------------------------------------------------------------
"for Vundle
"set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"--------------------------------------------------------------------------------



"set guifont=Courier\ New\ 14
set guifont=Inconsolata\ for\ Powerline\ 14
set tags=tags
set autochdir
set t_Co=256

"command -range=%chen :ConqueTermSplit bash

set runtimepath^=~/.vim/bundle/ctrlp.vim 
"let g:ctrlp_map = ',,'
"let g:ctrlp_open_multiple_files = 'v'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }

"set rtp+=~/.vim/bundle/NERD_tree-Project 
"let g:NTPNames = add(g:NTPNames, 'SConstruct')
"let g:NTPNames = add(g:NTPNames, '.git')
"extend(g:NTPNames, ['*.sln', '*.csproj','.git','.project','SConstruct'])

set list
set listchars=tab:>-,trail:-

highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

set ts=4
set expandtab


" for qt-cppcomplete, added by LiaoLiang Nov28,2008
"set tags+=/opt/qtsdk-2010.05/tags
"set tags+=/home/linux/linux-2.6.35/tags
"set tags+=/usr/include/tags
"set tags+=/home/badwtg1111/ortp-0.20.0/tags
"set tags+=/home/badwtg1111/oss-devel/tags
"set tags+=/home/badwtg1111/glibc-2.16.0/tags
"set tags+=/usr/include/c++/tags
"set tags+=/home/badwtg1111/cpp
"
set tags+=/home/chenchunsheng/qc4.4_20140513/packages/tags
set tags+=/home/chenchunsheng/qc4.4_20140513/system/.tags
set tags+=/home/chenchunsheng/qc4.4_20140513/development/tags

set tags+=/home/chenchunsheng/qc4.4_20140513/external/tags

"set tags+=/home/chenchunsheng/workdir/test_tiff/jni/tags

"cs add /home/chenchunsheng/workdir/test_tiff/jni/cscope.out /home/chenchunsheng/workdir/test_tiff/jni
cs add /home/chenchunsheng/qc4.4_20140513/packages/cscope.out /home/chenchunsheng/qc4.4_20140513/packages 
cs add /home/chenchunsheng/qc4.4_20140513/external/cscope.out /home/chenchunsheng/qc4.4_20140513/external 
cs add /home/chenchunsheng/qc4.4_20140513/development/cscope.out /home/chenchunsheng/qc4.4_20140513/development 

" for qc4.4
set tags+=/home/chenchunsheng/qc4.4_20140513/vendor/tags
cs add /home/chenchunsheng/qc4.4_20140513/vendor/cscope.out /home/chenchunsheng/qc4.4_20140513/vendor 

set tags+=/home/chenchunsheng/qc4.4_20140513/frameworks/tags
cs add /home/chenchunsheng/qc4.4_20140513/frameworks/cscope.out /home/chenchunsheng/qc4.4_20140513/frameworks


" for lte-mol
"set tags+=/home/chenchunsheng/lte-mol/frameworks/tags
"cs add /home/chenchunsheng/lte-mol/frameworks/cscope.out /home/chenchunsheng/lte-mol/frameworks

"set tags+=/home/chenchunsheng/lte-mol/vendor/tags
"cs add /home/chenchunsheng/lte-mol/vendor/cscope.out /home/chenchunsheng/lte-mol/vendor





"cscope设置
"set cscopequickfix=s-,c-,d-,i-,t-,e-

"nmap s :cs find s =expand("") 
" :cw    "查找声明
"nmap g :cs find g =expand("") 
":cw     "查找定义
"nmap c :cs find c =expand("") 
":cw    "查找调用
"nmap t :cs find t =expand("") :cw    
"查找指定的字符串
"nmap e :cs find e =expand("") 
":cw    "查找egrep模式，相当于egrep功能，但查找速度快多了
"nmap f :cs find f =expand("") 
":cw    "查找文件
"nmap i :cs find i ^=expand("")$ 
":cw   "查找包含本文件的文件
"nmap d :cs find d =expand("")  
":cw   "查找本函数调用的函数



" for the minibufexplpp
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" for doxygen toolkit
let g:DoxygenToolkit_briefTag_pre="@Synopsis "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns "
let g:DoxygenToolkit_blockHeader="----------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------"
let g:DoxygenToolkit_licenseTag="My own license"
let g:DoxygenToolkit_authorName="chen.chunsheng, badwtg1111@hotmail.com"
let s:licenseTag = "Copyright(C)\ "
let s:licenseTag = s:licenseTag . "For free\ "
let s:licenseTag = s:licenseTag . "All Rights Reserved\ "
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

" for supertab, added by LiaoLiang Nov28,2008
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType=""


"插件项目窗口宽度.    默认值: 24
let g:proj_window_width=20 
"当按空格键 <space> 或者单击鼠标左键/<LeftMouse>时项目窗口宽度增加量,默认值:100
let g:proj_window_increment=90
let g:proj_flags='i'    
"当选择打开一个文件时会在命令行显示文件名和当前工作路径.
let g:proj_flags='m'    
"在常规模式下开启 |CTRL-W_o| 和|CTRL-W_CTRL_O| 映射, 使得当前缓冲区成为唯一可
"                                 见的缓冲区, 但是项目窗口仍然可见.
let g:proj_flags='s'    "开启语法高亮.
let g:proj_flags='t'    "用按 <space> 进行窗口加宽.
let g:proj_flags='c'    "设置后, 在项目窗口中打开文件后会自动关闭项目窗口.
let g:proj_flags='F'   "显示浮动项目窗口. 关闭窗口的自动调整大小和窗口替换.
let g:proj_flags='L'    "自动根据CD设置切换目录.
let g:proj_flags='n'    "显示行号.
let g:proj_flags='S'    "启用排序.
let g:proj_flags='T'    "子项目的折叠在更新时会紧跟在当前折叠下方显示(而不是其底部).
let g:proj_flags='v'    "设置后将, 按 /G 搜索时用 :vimgrep 取代 :grep.
let g:proj_run1='!p4 edit %f'    "g:proj_run1 ...  g:proj_run9 用法.
let g:proj_run3='silent !gvim %f'


let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_OnlyWindow=1
let Tlist_Use_Right_Window=0
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_Process_File_Always=1
let Tlist_WinHeight=10
let Tlist_WinWidth=18
let Tlist_Use_Horiz_Window=0

" for omnicppcomplete, added by LiaoLiang Nov28,2008
set nocp
filetype plugin indent on
let OmniCpp_DefaultNamespaces = ["std"]
filetype plugin on
" :help omnicppcomplete
set completeopt=longest,menu      " I really HATE the preview window!!!
let OmniCpp_NameSpaceSearch=1     " 0: namespaces disabled
                                  " 1: search namespaces in the current buffer [default]
                                  " 2: search namespaces in the current buffer and in included files
let OmniCpp_GlobalScopeSearch=1   " 0: disabled 1:enabled
let OmniCpp_ShowAccess=1          " 1: show access
let OmniCpp_ShowPrototypeInAbbr=1 " 1: display prototype in abbreviation
let OmniCpp_MayCompleteArrow=1    " autocomplete after ->
let OmniCpp_MayCompleteDot=1      " autocomplete after .
let OmniCpp_MayCompleteScope=1    " autocomplete after ::
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

"for autocomplpop

let g:AutoComplPop_MappingDriven = 1

let g:pumselect = 0 
inoremap <expr> <TAB>   MaySelect()
function MaySelect()
	if(pumvisible())
		let g:pumselect = 1 
		return "\<DOWN>"
	endif
	return "\<TAB>"
endfunc

inoremap <expr> <Space> MayComplete()
func MayComplete()
	if (pumvisible() && g:pumselect)
		let g:pumselect = 0 
		return "\<CR>"
	endif
	return "\<Space>"
endfunc

inoremap <expr> <CR> StateChangeEnter()
func StateChangeEnter()
	let g:pumselect = 0 
	return "\<CR>"
endfunc


let g:winManagerWindowLayout='FileExplorer|Tagbar'
nmap wm :WMToggle<cr>
" .vimrc - Vim configuration file.
"
" Copyright (c) 2010 Jeffy Du. All Rights Reserved.
"
" Maintainer: Jeffy Du <jeffy.du@gmail.com>
"    Created: 2010-01-01
" LastChange: 2010-04-22

" GENERAL SETTINGS: {{{1
" To use VIM settings, out of VI compatible mode.
set nocompatible
" Enable file type detection.
filetype plugin indent on
" Syntax highlighting.
syntax on
" Setting colorscheme
"color mycolor
color desert
"color adrian
" Other settings.
set   autoindent
set   autoread
set   autowrite
set   background=dark
set   backspace=indent,eol,start
set nobackup
set   cindent
set   cinoptions=:0
set   cursorline
set   completeopt=longest,menuone
set   expandtab
set   fileencodings=utf-8,gb2312,gbk,gb18030
set   fileformat=unix
set   foldenable
set   foldmethod=manual
set   guioptions-=T
set   guioptions-=m
set   guioptions-=r
set   guioptions-=l
set   helpheight=10
set   helplang=cn
set   hidden
set   history=100
set   hlsearch
set   ignorecase
set   incsearch
set   laststatus=2
set   mouse=a
set   number
set   pumheight=10
set   ruler
set   scrolloff=5
set   shiftwidth=4
set   showcmd
set   smartindent
set   smartcase
set   tabstop=4
set   termencoding=utf-8
set   textwidth=80
set   whichwrap=h,l
set   wildignore=*.bak,*.o,*.e,*~
set   wildmenu
set   wildmode=list:longest,full
set nowrap

" AUTO COMMANDS: {{{1
" auto expand tab to blanks
"autocmd FileType c,cpp set expandtab
" Restore the last quit position when open file.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \     exe "normal g'\"" |
    \ endif

" SHORTCUT SETTINGS: {{{1
" Space to command mode.
nnoremap <space> :
vnoremap <space> :
" Switching between buffers.
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
inoremap <C-h> <Esc><C-W>h
inoremap <C-j> <Esc><C-W>j
inoremap <C-k> <Esc><C-W>k
inoremap <C-l> <Esc><C-W>l
" "cd" to change to open directory.
let OpenDir=system("pwd")

" PLUGIN SETTINGS: {{{1
" Set mapleader
let mapleader=","
" taglist.vim
let g:Tlist_Auto_Update=1
let g:Tlist_Process_File_Always=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_Show_One_File=1
let g:Tlist_WinWidth=25
let g:Tlist_Enable_Fold_Column=0
let g:Tlist_Auto_Highlight_Tag=1
" NERDTree.vim
let g:NERDTreeMouseMode=2
let g:NERDTreeAutoCenter=1
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeQuitOnOpen=0
" cscope.vim
if has("cscope")
    set csto=1
    set cst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif
" OmniCppComplete.vim
let g:OmniCpp_DefaultNamespaces=["std"]
let g:OmniCpp_MayCompleteScope=1
let g:OmniCpp_SelectFirstItem=2
" VimGDB.vim
if has("gdb")
	set asm=0
	let g:vimgdb_debug_file=""
	run macros/gdb_mappings.vim
endif
" LookupFile setting
let g:LookupFile_TagExpr='"./tags.filename"'
let g:LookupFile_MinPatLength=2
let g:LookupFile_PreserveLastPattern=0
let g:LookupFile_PreservePatternHistory=1
let g:LookupFile_AlwaysAcceptFirst=1
let g:LookupFile_AllowNewFiles=0
" Man.vim
source $VIMRUNTIME/ftplugin/man.vim
nmap <C-K> :Man 3 <cword><CR>
imap <C-K> <ESC><C-K>

" snipMate
let g:snips_author="Du Jianfeng"
let g:snips_email="cmdxiaoha@163.com"
let g:snips_copyright="SicMicro, Inc"
" plugin shortcuts
function! RunShell(Msg, Shell)
	echo a:Msg . '...'
	call system(a:Shell)
	echon 'done'
endfunction
nmap  <F4> :TlistToggle<cr>
nnoremap <silent> <F2> :TagbarToggle<CR>
nnoremap <Leader>t :TagbarToggle<CR>
let g:tagbar_left = 1

nmap  <F3> :ToggleNERDTree<cr>
"let NERDTreeWinPos='left'
nnoremap <silent> <leader>f :NERDTreeFind<CR>
let g:NTPNames = ['.git','build.xml', 'Makefile', '.project', '.lvimrc','Android.mk']
let g:NTPNames = add(g:NTPNames, 'SConstruct')
call extend(g:NTPNames, ['*.sln', '*.csproj'])

nmap  <F5> :MRU<cr>
nmap  <F8> <Plug>LookupFile<cr>
nmap  <F6> :vimgrep /<C-R>=expand("<cword>")<cr>/ **/*.c **/*.h<cr><C-o>:cw<cr>
nmap  <F9> :call RunShell("Generate tags", "ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .")<cr>
nmap <F10> :call HLUDSync()<cr>
nmap <F11> :call RunShell("Generate filename tags", "~/.vim/shell/genfiletags.sh")<cr>
nmap <F12> :call RunShell("Generate cscope", "cscope -Rb")<cr>:cs add cscope.out<cr>

nmap <leader>sa :cs add cscope.out<cr>
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<cr><cr>
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<cr><cr>
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<cr><cr>
nmap <leader>st :cs find t <C-R>=expand("<cword>")<cr><cr>
nmap <leader>se :cs find e <C-R>=expand("<cword>")<cr><cr>
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <leader>si :cs find i <C-R>=expand("<cfile>")<cr><cr>
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<cr><cr>
nnoremap <silent> <leader>g :Grep<CR> 

nmap <leader>zz <C-w>o
nmap <leader>gs :GetScripts<cr>

let g:ctrlp_extensions = ['funky']
nnoremap <Leader>fu :CtrlPFunky<Cr><Cr>
nnoremap <Leader>mm :CtrlPMixed<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
nmap <silent> <Leader>P <Plug>ToggleProject
nmap <silent> <leader>cd :exe 'cd ' . OpenDir<cr>:pwd<cr>
nmap <leader>lv :lv /<c-r>=expand("<cword>")<cr>/ %<cr>:lw<cr>

"Powerline
"let g:Powerline_symbols = 'unicode'
set laststatus=2   " Always show the statusline
"let g:Powerline_symbols_override = {
            "\ 'BRANCH': [0x2213],
            "\ 'LINE': 'L',
            "\ }
"let g:Powerline_dividers_override = ['>>', '>', '<<', '<']
"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
function! AccentDemo()
    let keys = ['a','b','c','d','e','f','g','h']
    for k in keys
        call airline#parts#define_text(k, k)
    endfor
    call airline#parts#define_accent('a', 'red')
    call airline#parts#define_accent('b', 'green')
    call airline#parts#define_accent('c', 'blue')
    call airline#parts#define_accent('d', 'yellow')
    call airline#parts#define_accent('e', 'orange')
    call airline#parts#define_accent('f', 'purple')
    call airline#parts#define_accent('g', 'bold')
    call airline#parts#define_accent('h', 'italic')
    let g:airline_section_a = airline#section#create(keys)
endfunction
"autocmd VimEnter * call AccentDemo()
map <Leader>n <plug>NERDTreeTabsToggle<CR>

map <Leader>mbe :MBEOpen<cr>
map <Leader>mbc :MBEClose<cr>
map <Leader>mbt :MBEToggle<cr>
" If you like control + arrow key to navigate windows
" then perform the remapping
"
noremap <C-Down>  <C-W>j
noremap <C-Up>    <C-W>k
noremap <C-Left>  <C-W>h
noremap <C-Right> <C-W>l

" If you like <C-TAB> and <C-S-TAB> to switch buffers
" in the current window then perform the remapping
"
noremap <Leader>n :MBEbn<CR>
noremap <Leader>p :MBEbp<CR>

" CtrlSF
nnoremap <C-F> :CtrlSF<space>
nmap <Leader>cf :CtrlSF <c-r><c-w><CR>
nmap <Leader>csf :CtrlSFOpen<CR>

"youdao
vnoremap <silent> <C-M> <Esc>:Ydv<CR> 
nnoremap <silent> <C-M> <Esc>:Ydc<CR> 
noremap <leader>yd :Yde<CR>
"for indentLine
let g:indentLine_color_term = 112

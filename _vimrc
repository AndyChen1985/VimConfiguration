set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" jsbeautify
Plugin 'maksimr/vim-jsbeautify'

" js beautify
Plugin 'einars/js-beautify'

" tern for vim
Bundle "marijnh/tern_for_vim"

" emmet plugin(coding html fast)
Plugin 'mattn/emmet-vim'

" angular vim plugin
Plugin 'burnettk/vim-angular'

" javascript libraries syntax
Plugin 'othree/javascript-libraries-syntax.vim'

" syntastic check plugin
Plugin 'scrooloose/syntastic'

" markdown plugin
Plugin 'godlygeek/tabular'

" markdown plugin
Plugin 'plasticboy/vim-markdown'

" html5 and svg omni
Plugin 'othree/html5.vim'

" jshint plugin
Plugin 'Shutnik/jshint2.vim'

" airline plugin
Plugin 'bling/vim-airline'

" Nerdtree plugin
Plugin 'scrooloose/nerdtree'

" webdevicons Plugin
 Plugin 'ryanoasis/vim-webdevicons'

" auto generate bracket
Plugin 'jiangmiao/auto-pairs'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on
filetype plugin indent on
filetype plugin on
".vimrc

map <c-f> :call JsBeautify()<cr>

" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>

" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>

" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 0 
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_jasmine = 1

set omnifunc=csscomplete#CompleteCSS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS 


autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

set guifont=Ubuntu\ Mono:h12
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set gfw=NSimsun:h12


" syntastic check setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0 
let g:syntastic_check_on_wq = 0

" emmet key setting
let g:user_emmet_expandabbr_key = '<tab>'
let g:user_emmet_togglecomment_key = '<C-y>/'

" markdown config
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_frontmatter=1

" tern config
let g:tern_show_argument_hints ="no"




set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set guioptions-=T
set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start
set number
colorscheme vividchalk
" if has("win32")
 "set fileencoding=chinese
 "else
 "set fileencoding=utf-8
"endif
source $VIMRUNTIME/delmenu.vim 
source $VIMRUNTIME/menu.vim 
set nocompatible       "be iMproved, required
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim

behave mswin
language messages zh_CN.utf-8

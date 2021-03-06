set nu
set nocompatible
set bs=2
set shiftwidth=4
set tabstop=4
" set tw=72
set cindent

set mouse=a

set nowrapscan

set showmatch
set showmode
set uc=0
set t_kD=^?
map ^H X
map \e[3~ x
set mousehide
set hlsearch
let c_comment_strings=1

" Color for xiterm, rxvt, nxterm, color-xterm :
if has("terminfo")
set t_Co=8
set t_Sf=\e[3%p1%dm
set t_Sb=\e[4%p1%dm
else
set t_Co=8
set t_Sf=\e[3%dm
set t_Sb=\e[4%dm
endif

" Colorscheme settings
colorscheme solarized
let g:solarized_termcolors=256
set background=light

"
" Syntax settings
"
syntax on

" scons build system
au BufNewFile,BufRead SCons* set filetype=scons

"
" Plugin section
"
"call pathogen#infect()

"set nocompatible
"filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Valloric/YouCompleteMe'
"let g:ycm_extra_conf_globlist = ['~/src/*','!~/*']

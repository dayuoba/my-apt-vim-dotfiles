" for pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
""""""""""""""""""
" plugins
""""""""""""""""""
" [PLUGIN] ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra' " when vi somefile, this help set the workdir
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] " ignore in .gitinore
" [PLUGIN] nerd tree
map <C-e> :NERDTreeToggle<CR>

" [PLUGIN] neocomplete
 let g:neocomplete#enable_at_startup = 1
" " Disable AutoComplPop.
 let g:acp_enableAtStartup = 0
" " Use neocomplete.
 let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
 let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
 let g:neocomplete#sources#syntax#min_keyword_length = 3
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType go setlocal omnifunc=javascriptcomplete#CompleteGO
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" [PLUGIN] vim-go
let g:go_fmt_command = "goimports" " format with goimports instead of gofmt"
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
" [PLUGIN] is.vim
" [PLUGIN] eleline.vim
" [PLUGIN] sleuth.vim
" [PLUGIN] emmet-vim
" enable emmet in all mode
let g:emmet_user_mode='a'
" only for html, css files
let g:user_emmet_install_global=0
autocmd FileType html,css EmmetInstall
set laststatus=2

"[PLUGIN] EasyMotion
let g:EasyMotion_leader_key = '<Leader>'

""""""""""""""""""
" configs
""""""""""""""""""
" fix backspace
set backspace=indent,eol,start
colorscheme ir_black
set hls
set ic
" custom shortcuts
map <C-x> :wq<CR> " save and exit
" syntax
syntax on
set nospell
imap jj <Esc>
let mapleader = ","
" set ejs to html file type
autocmd BufEnter *.ejs :setlocal filetype=html

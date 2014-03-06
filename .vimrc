syntax on
execute pathogen#infect()
set t_ut=
set t_Co=256
colors kolor

filetype plugin on
filetype indent on

au BufRead,BufNewFile *.go set filetype=go
autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd FileType go set noexpandtab tabstop=4 shiftwidth=4

set expandtab
set nocompatible
set backspace=2
set shiftwidth=4
set softtabstop=4
set smartindent
set number

set mouse=a

let g:SuperTabDefaultCompletionType = "context"
let g:gofmt_command = "goimports"

nmap <F8> :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
    \ 'p:package',
    \ 'i:imports:1',
    \ 'c:constants',
    \ 'v:variables',
    \ 't:types',
    \ 'n:interfaces',
    \ 'w:fields',
    \ 'e:embedded',
    \ 'm:methods',
    \ 'r:constructor',
    \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
    \ 't' : 'ctype',
    \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
    \ 'ctype' : 't',
    \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

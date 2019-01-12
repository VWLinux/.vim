runtime! debian.vim
syntax on

" Vundle e plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'                 " Plugin de instalações de plugins
Plugin 'vim-airline/vim-airline'              " Plugin para inserir uma barra de status personalizada
Plugin 'vim-airline/vim-airline-themes'       " Plugin para mudar o tema da barra de status
Plugin 'tpope/vim-commentary'                 " Adicionar linhas de comentarios de uma unica vez
Plugin 'godlygeek/tabular'                    " Cria tabulações multiplas
Plugin 'terryma/vim-multiple-cursors'         " Criar multiplas coisas ao mesmo tempo
Plugin 'ntpeters/vim-better-whitespace'       " Mostrar os espaços em branco
Plugin 'airblade/vim-gitgutter'               " Plugin para mostrar modificações no git
Plugin 'pangloss/vim-javascript'              " JS hightlight
Plugin 'leafgarland/typescript-vim'           " Angular2 sintaxe hightlight
Plugin 'Quramy/vim-js-pretty-template'        " Angular2 html string hightlight
Plugin 'scrooloose/nerdtree'                  " Pastas laterais
call vundle#end()
filetype plugin indent on

" Identação outros arquivos
set textwidth=120     " Limite de caracteres 120
set shiftwidth=2      " Quando usar os comandos >> ou <<, indentar em 2 espaços
set tabstop=2         " Seta o tamanho da tabulação para 2
set expandtab         " Crua espaços no lugar de tabulações
set softtabstop=2     " Insere/remove 2 espaços com TAB/Backespace
set showmatch         " Mostra caracteres ({[    quando fechados
set linebreak         " Quebre as linhas sem dividir as palavras

" Identação python
au BufNewFile,BufRead ?*.py
    \ setlocal textwidth=79      " Limite de caracteres 80
    \| setlocal shiftwidth=4		 " Quando usar os comandos >> ou <<, indentar em 4 espaços
    \| setlocal tabstop=4        " Seta o tamanho da tabulação para 4
    \| setlocal expandtab        " Insere espaços quando acionar a tecla TAB
    \| setlocal softtabstop=4    " Insere/remove 4 espaços com TAB/Backspace
    \| setlocal shiftround       " Arredonda a indentação para múltiplos dos shiftwidth especificados
    \| setlocal autoindent       " Identação automatica

" Cores
set background=dark       " Setar a cor de fundo
colorscheme monokai       " Inserir o tema monokai no vim
set t_Co=256              " Define que o vim tem 256 cores
set cursorline            " Highlight na linha do cursor
set cursorcolumn          " Highlight na coluna do cursor

" Linha númeradas
set number                " Enumerar as linhas

" Collapse metodos e classes utilizando espaco
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Buscas
set incsearch             " Vai deixando o cursor na busca feita
set is                    " Incrementa a busca
set hls                   " Deixa a busca destacada
set ignorecase            " Ignora letras maiusculas de minusculas

" Outros
set mouse=a               " Utilizer o mouse
set nobackup              " Desabilita o backup
set noswapfile            " Evita criar arquivos tmp .swp
set nowritebackup         " Evita arquivos temporarios ~
set laststatus=2          " Mostrar a barra de status sempre
set showcmd               " Mostrar os comandos de execução atual
set encoding=utf-8        " Suportar linguagem portugues

" VIM-AIRLINE
let g:airline#extensions#tabline#enabled = 1      " Tema da tabulação de cima
let g:airline_theme='jellybeans'                  " Tema geral

" NERDTREE Ctrl + n
autocmd vimenter ?* NERDTree
" autocmd bufenter ?* if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Syntastic
" let g:syntastic_python_checkers = ['flake8']  " Inserir o flake8 como folha de estilho (pyflake + pep8)
" let g:syntastic_auto_loc_list = 0             " Janela de erros não será aberta
" let g:syntastic_check_on_open = 0             " Verifica quando abre o arquivo
" let g:syntastic_check_on_wq = 1               " Verifica quando salva o arquivo
" let g:syntastic_python_flake8_post_args='--ignore=E501' " Ignora linha muito longa

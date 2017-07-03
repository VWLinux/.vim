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
Plugin 'scrooloose/syntastic'                 " Compilador de códigos para achar erros
Plugin 'terryma/vim-multiple-cursors'         " Criar multiplas coisas ao mesmo tempo
Plugin 'ntpeters/vim-better-whitespace'       " Mostrar os espaços em branco
Plugin 'airblade/vim-gitgutter'               " Plugin para mostrar modificações no git
Plugin 'MarcWeber/vim-addon-mw-utils'         " Plugin para rodar os snippers de várias linguagens
Plugin 'tomtom/tlib_vim'                      " Plugin para rodar os snippers de várias linguagens
Plugin 'garbas/vim-snipmate'                  " Plugin para rodar os snippers de várias linguagens
Plugin 'VictorArnaud/vim-snippets'            " Plugin de snippets para várias linguagens criados por mim
Plugin 'pangloss/vim-javascript'              " JS hightlight
Plugin 'python-mode/python-mode'							" Python IDE para o vim
Plugin 'leafgarland/typescript-vim'           " Angular2 sintaxe hightlight
Plugin 'Quramy/vim-js-pretty-template'        " Angular2 html string hightlight
call vundle#end()
filetype plugin indent on

" Identação outros arquivos
set tabstop=2         " Seta o tamanho da tabulação para 2
set expandtab         " Crua espaços no lugar de tabulações
set showmatch		      " Mostra caracteres ({[ quando fechados
set linebreak         " Quebre as linhas sem dividir as palavras

" Identação python
au BufNewFile,BufRead *.py
    \ set tabstop=4         " Seta o tamanho da tabulação para 4
    \ set softtabstop=4
    \ set shiftwidth=4			" Quando usar os comandos >> ou <<, indentar em 4 espaços
    \ set textwidth=79      " Limite de caracteres 80
    \ set autoindent        " Identação automatica
    \ set fileformat=unix   " Armazena o arquivo em formato unix

" Identação javascript, html e css
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2         " Seta o tamanho da tabulação para 2
    \ set softtabstop=2
    \ set shiftwidth=2			" Quando usar os comandos >> ou <<, indentar em 4 espaços

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

" Pymode
let g:pymode_python = 'python3'                   " Colocar o pymode para python3
let g:pymode_rope_completion_bind = '<C-Space>'   " Autocompletar com Ctrl + spaço
let g:pymode_rope_show_doc_bind = '<C-k>'         " Show documentation of method/class
let g:pymode_rope_goto_definition_bind = '<C-d>'  " Vai para a definição do método/classe
let g:pymode_options_max_line_length = 79         " Modificar o tamanho da linha pra 79
let g:pymode_options_colorcolumn = 1              " Inserir um marcador no final da linha
let g:pymode_trim_whitespaces = 1                 " Ao salvar retirar os espaços em branco
let g:pymode_syntax_all = 1                       " Ativer o highlights do python
let g:pymode_virtualenv = 1                       " Faz o pymode detectar o ambiente virtual
let g:pymode_lint = 1                             " Ativa o modo de verificação do código
let g:pymode_lint_unmodified = 1                  " Verifica o código a cada salvamento
let g:pymode_lint_message = 1                     " Mostra mensagem de erro se o cursor passar pelo erro
let g:pymode_lint_checkers = ['pep8', 'pylint']   " Verificadores de código
let g:pymode_lint_ignore = ""                     " Caso precise retirar algum validador de código

" Desativar algumas configurações do pymode
let g:pymode_folding = 0                          " Tirar as dobraduras
let g:pymode_motion = 0                           " Tirar alguns atalhos que não uso
let g:pymode_doc = 0                              " Tirar o pydoc e deixar o doc_bind
let g:pymode_run = 0                              " Retirar a execução do programa pelo vim
let g:pymode_breakpoint = 0                       " Retira a inserção de breakpoints pelo vim
let g:pymode_lint_on_fly = 0                      " Verifica o código ao edita-lo
let g:pymode_lint_on_write = 0                    " Verifica o código a cada salvamento se o arquivo estiver sido modificado
let g:pymode_lint_cwindow = 0                     " Não abrir nova aba com o lint
let g:pymode_rope_complete_on_dot = 0             " Ativar o autocomplete no .
let g:pymode_syntax_slow_sync = 1                 " Desativar para hardwares fracos

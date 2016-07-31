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
Plugin 'jiangmiao/auto-pairs'                 " Autocompletar ou fechar {[(' automaticamente
Plugin 'scrooloose/syntastic'                 " Compilador de códigos para achar erros
Plugin 'terryma/vim-multiple-cursors'         " Criar multiplas coisas ao mesmo tempo
Plugin 'ntpeters/vim-better-whitespace'       " Mostrar os espaços em branco
Plugin 'airblade/vim-gitgutter'               " Plugin para mostrar modificações no git
Plugin 'MarcWeber/vim-addon-mw-utils'         " Plugin para rodar os snippers de várias linguagens
Plugin 'tomtom/tlib_vim'                      " Plugin para rodar os snippers de várias linguagens
Plugin 'garbas/vim-snipmate'                  " Plugin para rodar os snippers de várias linguagens
Plugin 'VictorArnaud/vim-snippets'            " Plugin de snippets para várias linguagens criados por mim
call vundle#end()
filetype plugin indent on

" Identação
set ai                    " Autoidentação
set expandtab             " Cria espações no lugar de tabulação
set shiftwidth=2          " Cria 2 espações na tabulação
set tabstop=2             " Setar o tamanho da tabulação
set showmatch		          " Mostra caracteres ({[ quando fechados
set si                    " Reconhece sua identação
set nowrap                " Não quebrar a linha ao final do arquivo

" Cores
set background=dark       " Setar a cor de fundo
colorscheme monokai       " Inserir o tema monokai no vim
set t_Co=256              " Define que o vim tem 256 cores
set cursorline            " Highlight na linha do cursor
set cursorcolumn          " Highlight na coluna do cursor

" Linha númeradas
set nu                    "Enumerar as linhas

" Buscas
set incsearch             " Vai deixando o cursor na busca feita
set is                    " Incrementa a busca
set hls                   " Deixa a busca destacada
set ic                    " Ignora letras maiusculas de minusculas

" Outros
set mouse=a               " Utilizer o mouse
set nobackup              " Desabilita o backup
set noswapfile            " Evita criar arquivos tmp .swp
set nowritebackup         " Evita arquivos temporarios ~
set laststatus=2          " Mostrar a barra de status sempre
set showcmd               " Mostrar os comandos de execução atual

" VIM-AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_enable_branch = 1
let g:airline#themes#molokai#palette = {}
let g:airline_powerline_fonts = 0
let g:airline_enable_syntastic  = 1

" AUTO-PAIR
let g:AutoPairsFlyMode = 0                   " Tira o salto que da ao tentar fechar um colchete, possibilitando fecha-lo

" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


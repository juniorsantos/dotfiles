" ------------------------------------------------------------------------------
" # Plugin Definitions
" ------------------------------------------------------------------------------

    " NERDTree 
    Plug 'preservim/nerdtree' 
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-unimpaired'
    
    " Vim Surround
    Plug 'tpope/vim-surround'

    " Git Integrations
    Plug 'tpope/vim-fugitive'

    " Enhance Syntax Highlight
    Plug 'sheerun/vim-polyglot'
    
    " Testing
    Plug 'vim-test/vim-test'

    " Vim Commentary
    Plug 'tpope/vim-commentary'

    " Vim Startify
    Plug 'mhinz/vim-startify'

    " Tagbar
    Plug 'preservim/tagbar'

    " Tinkeray
    Plug 'jesseleite/vim-tinkeray'

    " Vim Sourcery
    Plug 'jesseleite/vim-sourcery'
    
    " Surround
    Plug 'tpope/vim-surround'

    " Emmet
    Plug 'mattn/emmet-vim'
 
    " Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Terminal
    Plug 'voldikss/vim-floaterm'

    " Git Diff
    Plug 'sindrets/diffview.nvim'
    Plug 'ThePrimeagen/git-worktree.nvim'

    " PHP docblocks
    Plug 'tobyS/vmustache'
    Plug 'tobyS/pdv', {'for': 'php'}

    " Debugging (look into dap)
    Plug 'vim-vdebug/vdebug', {'on': ['Breakpoint', 'VdebugStart']}

    " Refactoring Tools
    Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}

    " Git Signify
    if has('nvim') || has('patch-8.0.902')
        Plug 'mhinz/vim-signify'
    else
        Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
    endif
    
    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Web Dev Icons
    Plug 'kyazdani42/nvim-web-devicons'

    " File Icons
    Plug 'ryanoasis/vim-devicons'

    " Lualine
    Plug 'nvim-lualine/lualine.nvim'

    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'nvim-lua/lsp-status.nvim'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'folke/trouble.nvim'
    Plug 'onsails/lspkind-nvim'
    Plug 'tami5/lspsaga.nvim', { 'branch':'nvim6.0' }
 
    " Iceberg Theme
    Plug 'cocopon/iceberg.vim'
    
    "Carbon Theme
    Plug 'michaeldyrynda/carbon'
    
    Plug 'mvpopuk/inspired-github.vim'
    
    " Indent Guides
    Plug 'lukas-reineke/indent-blankline.nvim'
    
    " Buffer Line
    Plug 'akinsho/bufferline.nvim'
 
    " Smooth Scroll
    Plug 'karb94/neoscroll.nvim'

    " === 
    " Início da instalação do fzf
    " O fzf serve para fazer buscas no estilo do sublime text, com Ctrl + P
    " Antes de instalar, leia a documentação e instale as dependências
    " necessárias.
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
    Plug 'junegunn/fzf.vim'
    " Final da instalação do fzf
    " ===
    " Todo para listar tags a fazer segurando F5
    Plug 'dimercel/todo-vim'

" ------------------------------------------------------------------------------
" # Plugins Config
" ------------------------------------------------------------------------------

" Config: pdv
let g:pdv_template_dir = $HOME . "/.vim/plugged/pdv/templates_snip"

" Config: vdebug
let g:vdebug_options= {
  \ "port" : 9001,
  \ }

" Config: floaterm
let g:floaterm_width=0.9
let g:floaterm_height=0.9
let floaterm_title='($1/$2)'

" Config: indent-blankline
let g:indent_blankline_filetype_exclude = ['dashboard',  'startify', 'floaterm', 'nerdtree', 'lspinfo', 'lsp-installer' ]
let g:indent_blankline_use_treesitter = v:true

" Config: vim-signify
let g:signify_priority = 1
let g:signify_sign_add = '▍'
let g:signify_sign_change = '▍'
let g:signify_sign_delete_first_line = '▔'
let g:signify_sign_delete = '▁'

" Config: nerdtree
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" autocmd VimEnter * NERDTree
let g:NERDTreeChDirMode=1
let g:NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeWinPos = "left"
:let g:NERDTreeWinSize=35
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'~',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let g:NERDTreeStatusline = '%#NonText#'

" Config:startify

autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w
            \ | endif

let g:startify_lists = [
    \ { 'type': 'files',     'header': ['   Recently opened files']                    },
    \ { 'type': 'dir',       'header': ['   Recently opened project files '. getcwd()] },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                                },
    \ { 'type': 'commands',  'header': ['   Commands']                                 },
    \ ]

let g:startify_bookmarks = [
  \ '~/.dotfiles/tmux/.tmux.conf',
  \ '~/.dotfiles/install.conf.yaml',
\ ]

let g:startify_custom_header = [
    \       '      Project Explorer     ',
    \ ]

" Configuração do FZF --------------------------------------------------------
" Não exibir janela de pré-visualização de conteúdo do arquivo
let g:fzf_preview_window = []

" Syntax Highlight e configs default para janela de pré-visualização
let $FZF_DEFAULT_OPTS="--preview-window 'right:60%' --layout reverse --margin=0,0 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

" Posicionamento da janela do FZF
" let g:fzf_layout = { 'down': '50%' }

" Posicionamento da janela do FZF (v2)
let g:fzf_layout = 
\ { 'window': 
  \ { 'width': 0.98, 'height': 0.7, 'yoffset': 0.94, 'border': 'rounded' } 
\ }
let g:todo_below=1

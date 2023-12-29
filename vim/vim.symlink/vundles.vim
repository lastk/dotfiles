" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle (required)
Plugin 'VundleVim/Vundle.vim'


" Ruby
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-rake.git'
Plugin 'tpope/vim-rvm.git'
Plugin 'vim-ruby/vim-ruby.git'
Plugin 'keith/rspec.vim'
Plugin 'skwp/vim-iterm-rspec'
Plugin 'skwp/vim-spec-finder'
Plugin 'ck3g/vim-change-hash-syntax'
Plugin 'tpope/vim-bundler' 


" Languages
Plugin 'sheerun/vim-polyglot'
Plugin 'MarcWeber/vim-addon-mw-utils' " snipmate dependency
Plugin 'tomtom/tlib_vim' " snipmate dependency
Plugin 'garbas/vim-snipmate'

Plugin 'honza/vim-snippets'
Plugin 'jtratner/vim-flavored-markdown.git'
Plugin 'vim-syntastic/syntastic.git'
Plugin 'nelstrom/vim-markdown-preview'
Plugin 'skwp/vim-html-escape'
Plugin 'mxw/vim-jsx'
Plugin 'jparise/vim-graphql'



" Git
Bundle 'gregsexton/gitv'
Bundle 'mattn/gist-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'

" Appearance
Plugin 'chrisbra/color_highlight.git'
"Plugin 'skwp/vim-colors-solarized'
Plugin 'arcticicestudio/nord-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'jby/tmux.vim.git'
Plugin 'morhetz/gruvbox'
Plugin 'xsunsmile/showmarks.git'
Plugin 'chriskempson/base16-vim'

" Required for Gblame in terminal vim
Plugin 'godlygeek/csapprox.git' 


" Text Objects
" These Plugins introduce new textobjects into vim,
" For example the Ruby one introduces the 'r' text object
" such that 'var' gives you Visual Around Ruby
Plugin 'austintaylor/vim-indentobject'
Plugin 'bootleq/vim-textobj-rubysymbol'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'kana/vim-textobj-datetime'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-function'
Plugin 'kana/vim-textobj-user'
Plugin 'lucapette/vim-textobj-underscore'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'thinca/vim-textobj-function-javascript'
Plugin 'wellle/targets.vim'


" Search
Plugin 'justinmk/vim-sneak'
Plugin 'rking/ag.vim'
Plugin 'henrik/vim-indexed-search'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'skwp/greplace.vim'
Plugin 'Lokaltog/vim-easymotion'


" Project
Plugin 'jistr/vim-nerdtree-tabs.git'
Plugin 'preservim/nerdtree.git'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'JazzCore/ctrlp-cmatcher'
Plugin 'junegunn/fzf'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" Vim Improvements
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'Raimondi/delimitMate'
" Plugin 'Shougo/neocomplete.vim.git'
Plugin 'Shougo/deoplete.nvim.git'
Plugin 'briandoll/change-inside-surroundings.vim.git'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'vim-scripts/camelcasemotion.git'
Plugin 'vim-scripts/matchit.zip.git'
Plugin 'kristijanhusak/vim-multiple-cursors'
Plugin 'Keithbsmiley/investigate.vim'
Plugin 'chrisbra/NrrwRgn'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'bogado/file-line.git'
Plugin 'mattn/webapi-vim.git'
Plugin 'sjl/gundo.vim'
Plugin 'skwp/YankRing.vim'
Plugin 'tomtom/tlib_vim.git'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise.git'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-repeat.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/AnsiEsc.vim.git'
Plugin 'vim-scripts/AutoTag.git'
Plugin 'vim-scripts/lastpos.vim'
Plugin 'vim-scripts/sudo.vim'
Plugin 'goldfeld/ctrlr.vim'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end() 



" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.yadr/vim/.vundles.local"))
"  source ~/.yadr/vim/.vundles.local
endif

"Filetype plugin indent on is required by vundle
filetype plugin indent on

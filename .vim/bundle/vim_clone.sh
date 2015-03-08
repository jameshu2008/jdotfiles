#! /bin/bash

rm -Ri ack
rm -Ri delimitMate
rm -Ri emmet
rm -Ri gundo
rm -Ri nerdtree
rm -Ri supertab
rm -Ri tagbar
rm -Ri tcomment
rm -Ri theme_molokai
rm -Ri theme_tomorrow
rm -Ri theme_vim-colors-solarized
rm -Ri airline
rm -Ri fugitive
rm -Ri repeat
rm -Ri snipmate
rm -Ri snipmate_tlib_vim
rm -Ri snipmate_vim-addon-mw-utils
rm -Ri snipmate_vim-snippets
rm -Ri surround

git submodlule add https://github.com/mileszs/ack.vim.git ack
git submodlule add https://github.com/Raimondi/delimitMate.git delimitMate
git submodlule add https://github.com/mattn/emmet-vim.git emmet
git submodlule add https://github.com/sjl/gundo.vim.git gundo
git submodlule add https://github.com/scrooloose/nerdtree.git nerdtree
git submodlule add https://github.com/ervandew/supertab.git supertab
git submodlule add https://github.com/majutsushi/tagbar.git tagbar
git submodlule add https://github.com/tomtom/tcomment_vim.git tcomment_vim
git submodlule add https://github.com/tomasr/molokai.git theme_molokai
git submodlule add https://github.com/chriskempson/tomorrow-theme.git theme_tomorrow
git submodlule add https://github.com/altercation/vim-colors-solarized.git theme_vim-colors-solarized
git submodlule add https://github.com/bling/vim-airline.git airline
git submodlule add https://github.com/tpope/vim-fugitive.git fugitive
git submodlule add https://github.com/tpope/vim-repeat repeat
git submodlule add https://github.com/garbas/vim-snipmate.git snipmate
git submodlule add https://github.com/tomtom/tlib_vim.git snipmate_tlib_vim
git submodlule add https://github.com/MarcWeber/vim-addon-mw-utils.git snipmate_vim-addon-mw-utils
git submodlule add https://github.com/honza/vim-snippets.git snipmate_vim-snippets
git submodlule add https://github.com/tpope/vim-surround.git surround

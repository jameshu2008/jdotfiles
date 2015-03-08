#! /bin/bash

rm -Rf ack
rm -Rf delimitMate
rm -Rf emmet
rm -Rf gundo
rm -Rf nerdtree
rm -Rf supertab
rm -Rf tagbar
rm -Rf tcomment
rm -Rf theme_molokai
rm -Rf theme_tomorrow
rm -Rf theme_vim-colors-solarized
rm -Rf airline
rm -Rf fugitive
rm -Rf repeat
rm -Rf snipmate
rm -Rf snipmate_tlib_vim
rm -Rf snipmate_vim-addon-mw-utils
rm -Rf snipmate_vim-snippets
rm -Rf surround
rm -Rf syntastic
rm -Rf indent-guides

git submodule add --force https://github.com/mileszs/ack.vim.git ack
git submodule add --force https://github.com/Raimondi/delimitMate.git delimitMate
git submodule add --force https://github.com/mattn/emmet-vim.git emmet
git submodule add --force https://github.com/sjl/gundo.vim.git gundo
git submodule add --force https://github.com/scrooloose/nerdtree.git nerdtree
git submodule add --force https://github.com/ervandew/supertab.git supertab
git submodule add --force https://github.com/majutsushi/tagbar.git tagbar
git submodule add --force https://github.com/tomtom/tcomment_vim.git tcomment
git submodule add --force https://github.com/tomasr/molokai.git theme_molokai
git submodule add --force https://github.com/chriskempson/tomorrow-theme.git theme_tomorrow
git submodule add --force https://github.com/altercation/vim-colors-solarized.git theme_vim
git submodule add --force https://github.com/bling/vim-airline.git airline
git submodule add --force https://github.com/tpope/vim-fugitive.git fugitive
git submodule add --force https://github.com/tpope/vim-repeat repeat
git submodule add --force https://github.com/garbas/vim-snipmate.git snipmate
git submodule add --force https://github.com/tomtom/tlib_vim.git snipmate_tlib_vim
git submodule add --force https://github.com/MarcWeber/vim-addon-mw-utils.git snipmate_vim
git submodule add --force https://github.com/honza/vim-snippets.git snipmate_vim
git submodule add --force https://github.com/tpope/vim-surround.git surround
git submodule add --force https://github.com/scrooloose/syntastic.git syntastic
git submodule add --force https://github.com/nathanaelkane/vim-indent-guides.git indent-guides

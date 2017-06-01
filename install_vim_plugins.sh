# Clone plugins
rm -rf ~/jdotfiles/.vim/bundle/*
mkdir -p ~/jdotfiles/.vim/bundle
cd ~/jdotfiles/.vim/bundle

git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/tomtom/tcomment_vim.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/bling/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git

# git clone https://github.com/Raimondi/delimitMate.git
# git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
# git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
# git clone https://github.com/airblade/typescript-vim.git
# git clone https://github.com/airblade/vim-gitgutter.git
# git clone https://github.com/chriskempson/tomorrow-theme.git
# git clone https://github.com/garbas/vim-snipmate.git
# git clone https://github.com/honza/vim-snippets.git
# git clone https://github.com/honza/vim-snippets.git
# git clone https://github.com/kien/ctrlp.vim.git
# git clone https://github.com/majutsushi/tagbar.git
# git clone https://github.com/mattn/emmet-vim.git
# git clone https://github.com/mileszs/ack.vim.git
# git clone https://github.com/nathanaelkane/vim-indent-guides.git
# git clone https://github.com/scrooloose/syntastic.git
# git clone https://github.com/sjl/gundo.vim.git
# git clone https://github.com/tomasr/molokai.git
# git clone https://github.com/tomtom/tlib_vim.git
# git clone https://github.com/tpope/vim-fugitive.git
# git clone https://github.com/tpope/vim-repeat

# Update the plugins
cd ~/jdotfiles/
git submodule update --init --recursive


# Install pathogen.vim
if [ -d ~/.vim ];
then
    echo "~/.vim/ already exist. "
else
    mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/bundle
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    echo "~/.vim/ created."
fi

# Clone plugins
rm -rf ~/.vim/bundle/*
cd ~/.vim/bundle

# Essentials
git clone https://github.com/Raimondi/delimitMate.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/tomtom/tcomment_vim.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/tpope/vim-repeat

# Visual
git clone https://github.com/bling/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/flazz/vim-colorschemes.git
git clone https://github.com/altercation/vim-colors-solarized.git

# Language-specific
git clone https://github.com/pangloss/vim-javascript
git clone https://github.com/leafgarland/typescript-vim.git

# Good but not needed
# git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
# git clone https://github.com/airblade/typescript-vim.git
# git clone https://github.com/chriskempson/tomorrow-theme.git
# git clone https://github.com/garbas/vim-snipmate.git
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

# Update the plugins
# cd ~/jdotfiles
# git submodule update --init --recursive

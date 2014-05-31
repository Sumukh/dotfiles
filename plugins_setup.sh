#Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim


#Install Vim Airline
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline;

#Setup Vim Directories
mkdir ~/.vim/colors


#Install the tomorrow_night theme
wget https://raw.github.com/chriskempson/tomorrow-theme/master/vim/colors/Tomorrow-Night.vim;
cp Tomorrow-Night.vim tomorrow_night.vim;
cp tomorrow_night.vim ~/.vim/colors

mkdir ~/vimbu;
cp ~/.vimrc ~/.vimrc_backup
cp .vimrc ~/.vimrc

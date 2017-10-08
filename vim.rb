#setup vim

#space vim install 
`curl -sLf https://spacevim.org/install.sh | bash`
#neobundle install 
`curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh`

#exec installer
`sh ./install.sh`
#delete installer
`rm -rf install.sh`

`ln -s $PWD/SpaceVim.d $HOME/.SpaceVim.d`

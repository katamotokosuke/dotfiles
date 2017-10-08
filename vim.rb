#setup vim

#space vim install 
`curl -sLf https://spacevim.org/install.sh | bash`
#neobundle install 
`curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh`

#exec installer
`sh ./install.sh`
#delete installer
`rm -rf install.sh`

home_path = File.expand_path("~")
unless File.exist?(home_path + "/.SpaceVim.d/")
    `ln -s $PWD/SpaceVim.d/  $HOME/.SpaceVim.d`
end

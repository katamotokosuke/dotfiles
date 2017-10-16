#install brew
if system("brew -v")
        puts "brew already installed"
else 
    puts "brew install start"
    puts "Press RETURN to continue or any other key to abort"
    `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
    puts "brew install done"
end


`brew update`
#Install what i need
install_list = ["autoconf", "openssl", "rbenv", "ruby-build", "git", "pkg-config", "readline", "tig", "kotlin", "cask"]

install_list.each do |item|
   system("brew install #{item}") 
end

cask_list = ["google-chrome", "iterm2"]
cask_list.each do |item|
    system("brew cask install #{item}")
end

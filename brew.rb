#install brew
if system("brew -v")
        puts "brew already installed"
else 
    puts "brew install start"
    puts "Press RETURN to continue or any other key to abort"
    `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
    puts "brew install done"
end


system("brew update")
#Install what i need
install_list = ["autoconf", "openssl", "rbenv", "ruby-build", "git", "pkg-config", "readline", "tig"]

install_list.each do |item|
   system("brew install #{item}") 
end

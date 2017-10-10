puts "Start installation for Ruby "

rb_versions = `rbenv install --list`
puts rb_versions

puts "Please select ruby version"

loop_flag = true
while loop_flag  do 
    rb_version = gets.chomp
    if !rb_versions.split("\n").find do |v| ; v.strip == rb_version; end.nil?
        `rbenv install #{rb_version}` 
        loop_flag = false
    else
        puts "Not applicable"
    end
end
puts "Ruby install done!"

puts "Do you want to assign it for Global? y/n"
answer = gets.chomp
if answer == "y" || answer == "Y" || answer == "yes"
    `rbenv global #{rb_version}`
end


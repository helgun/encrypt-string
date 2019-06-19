require 'digest'

puts "Enter a word or phrase to encrypt:"
user_input = STDIN.gets.chomp
puts "How to encrypt:
1. MD5
2. SHA-1
"
user_input_method = STDIN.gets.to_i

if user_input_method == 1
  string = Digest::MD5.hexdigest(user_input)
  print "Here's what happened: "
  puts string
elsif user_input_method == 2
  string = Digest::SHA1.hexdigest(user_input)
  print "Here's what happened: "
  puts string
else
  puts "Enter valid encryption method"
end
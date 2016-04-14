print " what is your name?"
name = gets
puts "hello #{name}"
puts "my name is kalob"
puts "how are you today"
mood = gets.chomp
if mood == "terrible" or mood == "bad"
  print "i am sorry to hear that"
else
  print "it is nice to hear that you are #{mood}"
end 

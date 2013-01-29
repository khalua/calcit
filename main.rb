system('clear')
puts "Welcome to CalcIt, the greatest calculator in the world!"
15.times { print "*+/-" }
puts " "
puts "Press 1 + Enter for Basic Calculator"
puts "          addition, subtraction, multiplication, division"
puts "Press 2 + Enter for Advanced Calculator"
puts "          calculates power and square root"
main_choice = gets.chomp

#while true
  if main_choice == "1"
    #do basic calculator
    puts "Basic calc" #placeholder
  elsif main_choice == "2"
    #do advanced calculator
    puts "Advanced calc" #placeholder
  else
    puts "I don't understand"
  end
#end
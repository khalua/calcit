puts 'Welcome to the basic calculator!'
puts 'Enter your first number.'
numberone = gets.chomp.to_i

puts ''
puts 'Enter "+" for addition.'
puts 'Enter "-" for subtraction.'
puts 'Enter "*" for multiplication.'
puts 'Enter "/" for division.'
basicfunction = gets.chomp

while basicfunction != "+" || "-" || "*" || "/"
  puts "Please enter a function"
  basicfunction = gets.chomp
end

puts ''
puts 'Enter your second number.'
numbertwo = gets.chomp.to_i
puts ''

case basicfunction
  when "+"
    puts "#{numberone} + #{numbertwo} = " + (numberone + numbertwo).to_s
  when "-"
    puts "#{numberone} - #{numbertwo} = " + (numberone - numbertwo).to_s
  when "*"
    puts "#{numberone} * #{numbertwo} = " + (numberone * numbertwo).to_s
  when "/"
    puts "#{numberone} / #{numbertwo} = " + (numberone / numbertwo).to_s
  end
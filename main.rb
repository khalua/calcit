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
    puts "Basic calc"
    go_to_main = false

    while !go_to_main
    puts 'Welcome to the basic calculator!'

    puts 'Enter "a" for addition.'
    puts 'Enter "s" for subtraction.'
    puts 'Enter "m" for multiplication.'
    puts 'Enter "d" for division.'
    puts 'Enter "x" for main menu.'
    basicfunction = gets.chomp


    puts ''
     puts 'Enter your first number.'
    numberone = gets.chomp.to_i



    puts ''
    puts 'Enter your second number.'
    numbertwo = gets.chomp.to_i
    puts ''

    case basicfunction
      when "a"
        puts "#{numberone} + #{numbertwo} = " + (numberone + numbertwo).to_s
      when "s"
        puts "#{numberone} - #{numbertwo} = " + (numberone - numbertwo).to_s
      when "m"
        puts "#{numberone} * #{numbertwo} = " + (numberone * numbertwo).to_s
      when "d"
        puts "#{numberone} / #{numbertwo} = " + (numberone / numbertwo).to_s
      when 'x'
          #return to main_menu
          puts "Returning to Main Menu..."
          go_to_main = true
        else
          puts "Error: Please try again."
        end
    end

  elsif main_choice == "2"
    #do advanced calculator
    puts "Advanced calc"
    ### Advanced Calculator Submenu

    go_to_main = false

    while !go_to_main
      puts "Welcome to Advanced Calculator"
      puts "Please type an option:"
      puts "p - Power"
      puts "sq - square root"
      puts "x - Return to Main Menu"

      #choices
      opt = gets.chomp.downcase
      case opt
        when 'p'
            print "Enter a number: "
            num = gets.chomp.to_i
            print "Enter an exponent: "
            exp = gets.chomp.to_i
            ans = num**exp
            puts "Your answer is #{ans}"
            puts ""
        when 'sq'
          print "Enter your number: "
          num = gets.chomp.to_i
          ans = num*num
          puts "Your answer is #{ans}"
          puts ""

        when 'x'
          #return to main_menu
          puts "Returning to Main Menu..."
          go_to_main = true
        else
          puts "Error: Please try again."
        end
    end
  else
    puts "I don't understand"
  end

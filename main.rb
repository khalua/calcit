require 'rainbow'

def bmi_calc(weight,height)
  703 * weight / (height * height)
end

def bmi_io
  print "Weight in pounds: "
  a = gets.chomp.to_f
  print "Height in inches: "
  b = gets.chomp.to_f
  puts "Your BMI is #{bmi_calc(a,b)}"
end

while true
  system('clear')
  puts "Welcome to CalcIt, the greatest calculator in the world!"
  15.times { print "*+/-" }
  puts " "
  puts "Press 1 + Enter for Basic Calculator"
  puts "          addition, subtraction, multiplication, division"
  puts "Press 2 + Enter for Advanced Calculator"
  puts "          calculates power and square root"
  puts "Press 3 + Enter to quit"
  puts "          "

  main_choice = gets.chomp


  #while true
    if main_choice == "1"
      in_basic_menu = true
      while in_basic_menu
        #do basic calculator
        puts "Basic calc"
        puts 'Welcome to the basic calculator!'

        puts 'Enter "a" for addition.'
        puts 'Enter "s" for subtraction.'
        puts 'Enter "m" for multiplication.'
        puts 'Enter "d" for division.'
        puts 'Enter "x" for main menu.'
        basicfunction = gets.chomp
        if basicfunction == 'x'
          puts "Returning to Main Menu..."
          in_basic_menu = false
          break
        end

        def getFirst
          puts "Enter first number: "
          num = gets.chomp.to_i

        end

        def getSecond
          puts "Enter second number: "
          num = gets.chomp.to_i
        end



        case basicfunction
          when "a"
            firstNum = getFirst
            secondNum = getSecond
            puts "#{firstNum} + #{secondNum} = " + (firstNum + secondNum).to_s
          when "s"
            firstNum = getFirst
            secondNum = getSecond
            puts "#{firstNum} - #{secondNum} = " + (firstNum - secondNum).to_s
          when "m"
            firstNum = getFirst
            secondNum = getSecond
            puts "#{firstNum} * #{secondNum} = " + (firstNum * secondNum).to_s
          when "d"
            firstNum = getFirst
            secondNum = getSecond
            puts "#{firstNum} / #{secondNum} = " + (firstNum / secondNum).to_s
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
    elsif main_choice == "3"
      puts "bye"
      break


    elsif main_choice == "4"
      #placeholder for BMI
      bmi_io
      break



    else
      puts "I don't understand"
    end
  end
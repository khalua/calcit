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
  puts "Welcome to CalcIt, the greatest calculator in the world!".foreground(:red).underline.bright.blink
  15.times { print "*+/-" }
  puts " "
  puts "Press 1 + Enter for Basic Calculator".foreground(:magenta)
  puts "          addition, subtraction, multiplication, division"
  puts "Press 2 + Enter for Advanced Calculator".foreground(:magenta)
  puts "          calculates power and square root"
  puts "Press 3 + Enter for Mortgage Calculator".foreground(:magenta)
  puts "          calculates mortgage payments"
  puts "Press 4 + Enter for BMI Calculator".foreground(:magenta)
  puts "          calculates body mass index"
  puts "Press 5 + Enter for Tony Trip Calculator".foreground(:magenta)
  puts "          trip cost and length"
  puts "Press 6 + Enter for Brian Trip Calculator".foreground(:magenta)
  puts "          trip cost and length"
  puts "Press 7 + Enter for Alex Trip Calculator".foreground(:magenta)
  puts "          trip cost and length"
  puts "Press 8 + Enter to quit".foreground(:magenta)
  puts "          "

  main_choice = gets.chomp
  system('clear')


  #while true
    if main_choice == "1"
      in_basic_menu = true
      while in_basic_menu
        #do basic calculator
        puts 'Welcome to the Basic Calculator!'.foreground(:red).bright.underline
        puts 'Please select an option:'
        puts ''
        puts 'Enter "a" for addition.'.foreground(:magenta)
        puts 'Enter "s" for subtraction.'.foreground(:magenta)
        puts 'Enter "m" for multiplication.'.foreground(:magenta)
        puts 'Enter "d" for division.'.foreground(:magenta)
        puts 'Enter "x" for main menu.'.foreground(:magenta)
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
      system('clear')
      ### Advanced Calculator Submenu

      go_to_main = false

      while !go_to_main
        puts "Welcome to Advanced Calculator".foreground(:red).bright.underline
        puts "Please type an option:"
        puts "p - Power".foreground(:magenta)
        puts "sq - square root".foreground(:magenta)
        puts "x - Return to Main Menu".foreground(:magenta)

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
      #mortgage

    elsif main_choice == "4"
      bmi_io
      puts "hit enter to proceed"
      gets
      #BMI

    elsif main_choice == "5"
    #tony trip

    elsif main_choice == "6"
    #brian trip

    elsif main_choice == "7"
    #alex trip

    elsif main_choice == "8"
      puts "bye"
      break



    else
      puts "I don't understand"
    end
  end
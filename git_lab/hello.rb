def calc
  puts "Ruby Calculator v1.0\nEnter 'q' to quit."

  while true
    print ">> "
    equation = gets.chomp.split(" ")  # splits into array, rejects blanks
    return if equation[0] == 'q'      # quit if first element is 'q'

    operand1 = equation[0].to_f
    operand2 = equation[2].to_f
    operator = equation[1].to_sym

    case operator
      when :+ then puts operand1 + operand2
      when :- then puts operand1 - operand2
      when :* then puts operand1 * operand2
      when :/ then puts operand1 / operand2
      when :% then puts operand1 % operand2
      else
        puts "invalid input"
      end
    end

  end
end

puts "Hello, there! It's time to test our Ruby Calculator!"
calc
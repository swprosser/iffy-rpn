#!/usr/bin/ruby

require_relative "calculator.rb"

class Main
  def self.run
    calc = Calculator.new

    print "> "

    while line = gets
      line.chomp!
      break if line == "q"

      tokens = line.split(/\s+/)
      tokens.each { |token| calc.evaluate(token) }

      puts calc.top

      print "> "
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  Main.run
end

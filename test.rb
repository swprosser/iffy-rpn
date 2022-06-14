#!/usr/bin/ruby

require_relative "calculator.rb"

class Test
  def self.example1
    calc = Calculator.new
    calc.evaluate("5")
    calc.evaluate("8")
    calc.evaluate("+")
    expect_result calc.top, 13.0
  end

  def self.example2
    calc = Calculator.new
    calc.evaluate("-3")
    calc.evaluate("-2")
    calc.evaluate("*")
    calc.evaluate("5")
    calc.evaluate("+")
    expect_result calc.top, 11.0
  end

  def self.example3
    calc = Calculator.new
    calc.evaluate("5")
    calc.evaluate("9")
    calc.evaluate("1")
    calc.evaluate("-")
    calc.evaluate("/")
    expect_result calc.top, 0.625
  end

  def self.expect_result(result, expected_result)
    raise "Got #{result} but expected #{expected_result}" if result != expected_result
  end

  def self.run
    example1
    example2
    example3
    puts "All tests passed successfully!"
  end
end

if __FILE__ == $PROGRAM_NAME
  Test.run
end

class Calculator
  def initialize
    @stack = []
  end

  def evaluate(token)
    result = if token == "+"
      plus
    elsif token == "-"
      minus
    elsif token == "*"
      times
    elsif token == "/"
      divide
    else
      token.to_f
    end

    @stack.push(result)
  end

  def plus
    @stack.pop + @stack.pop
  end

  def minus
    second_num = @stack.pop
    @stack.pop - second_num
  end

  def times
    @stack.pop * @stack.pop
  end

  def divide
    second_num = @stack.pop
    @stack.pop / second_num
  end

  def top
    @stack.last
  end
end

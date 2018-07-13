class Calculator
  def add(a, b)
    a + b
  end
  def pretty_add(a, b)
    "the sum of #{a} and #{b} is #{add(a, b)}"
  end
  def add_many(array)
    sum = 0
    array.each do |number|
      sum += number
    end
    sum
  end
  def puts_pretty_add(a, b)
    print "#{pretty_add(a, b)}"
  end
end

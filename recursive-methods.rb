
def factorial(n)
  raise ArgumentError.new("Not an integer") if
  !(n.class==Integer)
  raise ArgumentError.new("Not a non-negative integer") if n < 0
  if n==0
    return 1
  else
    return n * factorial(n-1)
  end
end


#with tail recursion (just for fun):
def factorialB(n, total=1)
  raise ArgumentError.new("Not an integer") if
  !(n.class==Integer)
  raise ArgumentError.new("Not a non-negative integer") if n < 0

  if n==0
    return total
  else
    return factorialB(n-1, n * total)
  end
end


def reverse(s)
  if s.nil? || s.length==0
    return ""
  else
    return reverse(s[1..-1])+s[0]
  end
end


def bunny(n)
  raise ArgumentError.new("Not an integer") if
  !(n.class==Integer)
  raise ArgumentError.new("Not a non-negative integer") if n < 0
  if n==0
    return 0
  else
    return bunny(n-1) + 2
  end
end


#Accepts ()() as acceptable 'nestings' of parentheses.
def nested(s,  counter = 0)
  s.each_char do |paren|
    raise ArgumentError.new("Includes non-paren characters") if !['(',')'].include?(paren)
  end

  if s.length == 0
    (counter == 0)? true:false
  elsif s[0]=='('
    counter += 1
    return nested(s[1..-1], counter)
  elsif s[0]==')'
    counter -= 1
    if counter < 0
      return false
    else
      return nested(s[1..-1], counter)
    end
  end
end


# Only accepts strictly nested strings of parenteses.
# Ex ()() will count as false.
def strictly_nested(s,  counter = 0)
  s.each_char do |paren|
    raise ArgumentError.new("Includes non-paren characters") if !['(',')'].include?(paren)
  end

  if s.length == 0
    (counter == 0)? true:false
  elsif s[0]=='('
    counter += 1
    return strictly_nested(s[1..-1], counter)
  elsif s[0]==')'
    counter -= 1
    #Since we only want strictly nested parentheses [ie don't want to allow ()() ], if counter hits 0 and there are more characters in the string, the method should return false.
    if counter == 0 && s.length != 1
      return false
    else
      return strictly_nested(s[1..-1], counter)
    end
  end
end


####### Added Fun

def fib(n)
  raise ArgumentError.new("Not an integer") if
  !(n.class==Integer)
  raise ArgumentError.new("Not a positive integer") if n < 0
  if n == 1
    return 1
  elsif n == 2
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end


def pal(s)
  if (s.length == 1) || (s.length == 0)
    return true
  elsif s[0] == s[-1]
    return pal(s[1..-2])
  else
    return false
  end
end



# Factorial Tests
raise "factorial broke - factorial(4)" unless factorial(4) == 24
raise "factorial broke - factorial(0)" unless factorial(0) == 1
puts "passes all factorial tests"

# Reverse Tests
raise "reverse broke - reverse('hello world')" unless reverse("hello world") == "dlrow olleh"
raise "reverse broke - reverse('a b c')" unless reverse("a b c") == "c b a"
puts "passes all reverse tests"

# Bunny Tests
raise "bunny broke - bunny(0)" unless bunny(0) == 0
raise "bunny broke - bunny(10)" unless bunny(10) == 20
puts "passes all bunny tests"

# # Nested Tests
# raise "nested broke - nested('((()))')" unless reverse("((()))") == true
# raise "nested broke - nested('())')" unless reverse("())") == false
# puts "passes all nested tests"

puts 'typo in the nested tests. written as reverse instead of nested'


puts "All test passed"

def factorial(n)
  raise ArgumentError.new("n must be >= to 0") if n < 0
  if n == 0
    return 1
  else
    return n * factorial(n-1)
  end
end

def reverse(s)
  if s.length == 1
    return s
  else
    return reverse(s[1..-1]) + s[0]
  end
end

def bunny(n)
  raise ArgumentError.new("n must be >= to 0") if n < 0
  if n == 0
    return 0
  else
    return 2 + bunny(n-1)
  end
end

def nested(s) # better way to write this method?
  # return false once, will always be false
  if s == "()" || s == ""
    return true
  elsif s[0] == ")" || s[-1] == "("
    return false
  else
    closed_index = 0
    until s[closed_index] == ")"
      break if closed_index == s.length - 1
      closed_index += 1
    end
      return nested(s[0] + s[closed_index]) && nested(s[1...closed_index] + s[(closed_index+1)...s.length])
  end
end

def fib(n)
  raise ArgumentError.new("n must be >= 0") if n < 0
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

def pal(s)
  if s.length == 1
    return true
  elsif s[0] != s[-1]
    return false
  else
    return pal(s[1..-2])
  end
end

def factorial(n)
  if n == 0
    return n
  else
    return n * factorial(n-1)
  end
end

def reverse(s)
  if s.length == 1
    return s
  else
    return s[-1] + reverse(s[0...-1])
  end
end

def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n-1)

  end
end

def nested(s)
  if s.length % 2 != 0
    return false
  elsif s.length == 0
    return true
  elsif s[0] == "(" && s[-1] == ")"
    return nested(s[1...-1])
  else
    return false
  end
end

def fib(n)
  if n == 1 || n == 0
    return n
  else
    return fib(n-1) + fib(n-2)
  end
end

def pal(s)
  if s.length <= 1
    return true
  elsif s[0] == s[-1]
    return pal(s[1...-1])
  else
    return false
  end
end

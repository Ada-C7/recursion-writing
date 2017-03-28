
def factorial(n)
  raise ArgumentError.new("Not an integer") if
  !(n.class==Integer)
  raise ArgumentError.new("Not a positive integer") if n < 0

 if n==0
   return 1
 else
   return n * factorial(n-1)
 end
end

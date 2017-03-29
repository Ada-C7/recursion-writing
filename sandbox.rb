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

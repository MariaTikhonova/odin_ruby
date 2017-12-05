#Has testing file in folder. See README at repo's root for testing usage if needed
class Caesar

def initialize(str)
raise unless str.is_a?(String)
@str = str
end

def caesar(n)
newstr = ""
@str.each_char{|i| (i = (i.ord - 97 + n)%26 + 97 if ('a'..'z').include?(i)) || (i = (i.ord - 65 + n)%26 + 65 if ('A'..'Z').include?(i)); newstr << i}
(@str == '' || n == 0) ? ("Try again with correct input") : (newstr)
end

end

Caesar.new("What a string!").caesar(5)
Caesar.new("Looks not like C no more, hun?").caesar(22)
Caesar.new("").caesar(2)
Caesar.new("And what will you do now").caesar(0)

#>>"Bmfy f xywnsl!"
#>>"Hkkgo jkp hega Y jk ikna, dqj?"
#>>"Try again"
#>>"Try again"
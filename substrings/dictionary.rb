dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
 string.downcase!
 s = string.gsub(/[^a-z]/,' ').split
 substrings = dictionary.select{|i|  string.include?(i)} 
 counts = substrings.map{|k|  s.count{|i| i.include?(k)}}
p result = Hash[substrings.zip(counts)]
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)


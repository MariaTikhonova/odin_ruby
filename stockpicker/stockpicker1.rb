def stockpicker(ar)
cheap = []
expensive = []
result = []
ar.map.with_index do |i,idx|
	if ar.min(2).include?(i)
		cheap << idx
	elsif ar.max(2).include?(i)
		expensive << idx
    end
 end
p result.push(cheap.min,expensive.max)
end

stockpicker([13,3,96,9,15,8,6,1,10])
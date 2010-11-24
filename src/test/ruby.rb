def myCount (str, char)
	str.count char
end

puts self.respond_to? :myCount, true
puts Kernel.respond_to? :myCount
puts Object.respond_to? :myCount
puts 1.respond_to? :myCount

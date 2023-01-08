module StringShuffle
	refine String do
		def shuffle
			chars.shuffle.join
		end
	end
end

class User
	using StringShuffle

	def shuffle_name(name)
		name.shuffle
	end
end

user = User.new
p user.shuffle_name("sdk")
p "---"

# userインスタンスでしかshuffleできないのが主旨

class User2
	def text
		"aaa"
	end
end

module StringShuffle2
	refine User2 do
		def text
			"bbb"
		end
	end
end

user2 = User2.new
p user2.text
using StringShuffle2
p user2.text

# refineをusingした後に、指定したclassで使える。それ以外のclassでは使えない

class User3
	def text
		"zzz"
	end
end

user3 = User3.new
p user3.text

# 最後はbbbにはならない






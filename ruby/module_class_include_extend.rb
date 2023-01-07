module Color
	def red
		p "red"
	end
end

class Loggable
	extend Color
	def log(text)
		p "[LOG] #{text}"
	end
end
# Color.red # ERROR moduleからmethodを直接呼べない
Loggable.red # p red


module Color
	def red
		p "red"
	end
end

class Loggable
	include Color
	def self.log(text)
		p "[LOG] #{text}"

	end
end
l = Loggable.new; l.red  # p red
Loggable.log("sdk")  # p "[LOG] sdk"
# Loggable.red  # ERROR newせずにinclude先のmethodは呼べない(extendならLoggableを介してできる)



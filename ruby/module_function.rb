module Loggable
	PREFIX = "pre_"
	def log(text)
		puts "[LOG] #{text}"
	end
	module_function :log
end

Loggable.log("hello")  # module_functionで指定すれば使用可
p Loggable::PREFIX  # moduleの定数参照方法


module Loggable2
	module_function
	def log(text)
		puts "[LOG] #{text}"
	end

	def alert(text)
		puts "[ALERT] #{text}"
	end

end

Loggable2.alert("yo") # module_functionを記述すればそれ以下は使用可

## moduleの特異メソッド(組み込み)
p Math.sqrt(2)   # 1.414...

class Calculator
	include Math

	def calc_sqrt(n)
		sqrt(n)
	end
end
calc = Calculator.new
p calc.calc_sqrt(3)  # 組み込みのMath classのメソッドを自前classとして使う

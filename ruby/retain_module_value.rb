module AwesomeApi
	@base_url = "aaa"

	class << self  # 自身のインスタンス変数base_urlに、静的にアクセスできるようにする
		attr_accessor :base_url
	end

end

p AwesomeApi.base_url
AwesomeApi.base_url = "bbb"
p AwesomeApi.base_url

p "---"


class AwesomeApi2
	@base_url2 = "xxx"	
	class << self
		attr_accessor :base_url2
	end
end

p AwesomeApi2.base_url2
AwesomeApi2.base_url2 = "zzz"
p AwesomeApi2.base_url2


aa2 = AwesomeApi2.new
# 静的なclassはnewした後methodを呼べない
# newした後base_url2というメソッド（インスタンス変数ではなく）を呼ぼうとする
# p aa2.base_url2
p "---"


class AwesomeApi3
	attr_accessor :base_url33
	
	def base_url3
		@base_url33 = "iii"
	end
end

aa3 = AwesomeApi3.new
p aa3.base_url33
p aa3.base_url3
p aa3.base_url33

aa3_sub = AwesomeApi3.new
p aa3_sub.base_url33
p aa3_sub.base_url3
p aa3_sub.base_url33

p "---"


### 概要
# module AwesomeApi, class AwesomeApi2は静的で値を保持する
# class AwesomeApi3 は動的(new)で、newするたびに値が初期化される
# moduleは初期化自体できない
# 




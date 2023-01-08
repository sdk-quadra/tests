module Greetable
	def hello
		"hello."
	end
end

module Yo
	include Greetable
	# prepend Greetable
	def hello
		"check it.#{super}"
	end
end

class User
	include Yo
end

p User.ancestors
p User.new.hello

# 先に読み込んだmoduleやclassのメソッドが適用される
# ancestorで読み込みの順番を確認する
# prependやincludeで読み込み順を変えられるのが趣旨
# superは親の同名メソッドを呼ぶ
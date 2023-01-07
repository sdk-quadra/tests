module Rainbowable
	def rainbow

		colored_chars = []

		to_s.each_char.with_index do |char, count|
			
			color = 31 + count % 6
			colored_chars << "\e[#{color}m#{char}"

		end
		
		# 文字色リセット
		ret = colored_chars.join + "\e[0m"
	end
end

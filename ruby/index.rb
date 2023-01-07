class Tempo
	include Comparable

	attr_reader :bpm

	def initialize(bpm)
		@bpm = bpm
	end

	def <=>(other)
		other.is_a?(Tempo) ? bpm <=> other.bpm : nil
	end

	# 既存のComparableにinspectがある。それを上書き
	# objectを-bpm表記にする
	def inspect
		"#{bpm}bpm"
	end
end


t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

p t_120 > t_180
p t_120 < t_180

p [t_180, t_120, t_180].sort
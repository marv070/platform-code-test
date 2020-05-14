class BlueCompare
	

	def self.update(award)
		award.quality = calculate_quality(award.expires_in, award.quality)
		award.expires_in -= 1

		award
	end

	def self.calculate_quality(expires_in,quality)
		case expires_in
		when 0
			quality = 0
		when 1..5
			# binding.pry
			quality += 3
		when 6..10
			# binding.pry
			quality += 2
		else
			# binding.pry
			quality += 1
		end
		[quality,50].min
	end

end


class BlueCompare
	

	def self.update(award)
		award.expires_in -= 1
		award.quality = calculate_quality(award.expires_in, award.quality)

		award
	end

	def self.calculate_quality(expires_in,quality)
		case expires_in
		when 0
			quality = 0
		when 1...5
			quality += 3
		when 6...10
			quality += 2
		else
			quality += 1
		end
		[quality,50].min
	end

end


class BlueCompare
	
	def self.update(award)
		award.quality = calculate_quality(award.expires_in, award.quality)
		award.expires_in -= 1

		award
	end

	def self.calculate_quality(expires_in,quality)
		case 
		when expires_in < 1
			quality = 0
		when expires_in.between?(1,5)
			quality += 3
		when expires_in.between?(6,10)
			quality += 2
		else
			quality += 1
		end
		[quality,50].min
	end

end

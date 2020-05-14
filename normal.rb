class Normal
	
	def self.update(award)
		award.expires_in -= 1
		award.expires_in > 0 ? award.quality -= 1 : award.quality -= 2
		award
	end
end

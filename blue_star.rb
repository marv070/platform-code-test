class BlueStar
	
	def self.update(award)
		award.expires_in -= 1
		award.quality = [award.quality - 2,0].max
		award
	end
end
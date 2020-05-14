class BlueStar
	
	def self.update(award)
		award.quality = [(award.expires_in < 1 ? award.quality - 4  : award.quality - 2),0].max
		award.expires_in -= 1
		award
	end
end
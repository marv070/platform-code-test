class BlueStar
	
	def self.update(award)
		award.expires_in -= 1
		award.quality -= 2
		award
	end
end
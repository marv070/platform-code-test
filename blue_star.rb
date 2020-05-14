class BlueStar
	
	def self.update(award)
		award.expires_in -= 1
		award
	end
end
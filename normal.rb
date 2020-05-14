class Normal
	
	def self.update(award)
		award.expires_in -= 1
		award.quality -= 1
		award
	end
end

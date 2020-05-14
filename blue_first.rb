class BlueFirst

	def self.update(award)
		award.expires_in -= 1
		award.quality = [(award.quality + 1),50].min
		award
	end
end
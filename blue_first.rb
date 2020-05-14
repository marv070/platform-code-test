class BlueFirst

	def self.update(award)
		award.quality = [(award.expires_in > 0 ? award.quality + 1  : award.quality + 2),50].min
		award.expires_in -= 1
		award
	end
end
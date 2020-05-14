require 'award'
require 'pry'
require_relative 'normal.rb'
require_relative 'blue_first.rb'
require_relative 'blue_compare.rb'
require_relative 'blue_distinction_plus.rb'
require_relative 'blue_star.rb'

@@strategies = {}
  @@strategies['Blue First'] = BlueFirst
  @@strategies['Blue Compare'] = BlueCompare
  @@strategies['Blue Distinction Plus'] = BlueDistinctionPlus
  @@strategies['Blue Star'] = BlueStar
  @@strategies.default = Normal

def update_quality(awards)
  awards.each do |award|
    strategy = @@strategies[award.name].update(award)
  end
end

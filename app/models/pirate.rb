class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(attributes)
    @name = attributes[:name]
    @weight = attributes[:weight]
    @height = attributes[:height]
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end

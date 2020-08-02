class Restaurant
  attr_reader :name, :cuisine

  @@all = []
  
  def initialize(name, cuisine)
    @name = name
    @cuisine = cuisine
    @@all << self
  end

  def self.all
    @@all
  end

end # end of Restaurant class
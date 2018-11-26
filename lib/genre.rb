class Genre
 attr_accessor :name
@@all = []

  def initialized(name)
    @name = name
    @@all << self
  end
end

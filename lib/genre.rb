require 'pry'
class Genre 
  
  @@all = [] 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
    
  end 
  
  def self.all 
    @@all 
    
  end 
  
  def songs
    Song.all.each do |i| 
      i 
    end 
  end 
  
  def artists 
    Artist.all.each do |i| 
      i
    end
  end 
  
end 
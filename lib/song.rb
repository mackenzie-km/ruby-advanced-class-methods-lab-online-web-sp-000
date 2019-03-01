   require "pry"
   class Song

  attr_accessor :name, :artist_name
  @@all = []
  
  def save
    self.class.all << self
  end 
  
  def self.create
    new_song = self.new
    new_song.save
    new_song
  end 

 def self.new_by_name(inputted_name)
new_song = self.new
new_song.name = "#{inputted_name}"
new_song
end 

def self.create_by_name(inputted_name)
  new_song = self.new_by_name(inputted_name)
  new_song.save
  new_song
end

def self.find_by_name(desired_song)
self.all.find_all {|song| song == desired_song}
end

  def self.all
    @@all
  end
end

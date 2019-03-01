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
self.all.find {|song| song.name == desired_song}
end

def self.find_or_create_by_name(desired_song)
  if self.find_by_name(desired_song) != nil 
    self.find_by_name(desired_song)
  else 
    self.create_by_name(desired_song)
  end 
end

def self.alphabetical
pre_sort = []
sorted = []
  
self.all.each do |song|
  pre_sort << song.name 
end

pre_sort.sort.each do |song|
  sorted << self.find_by_name(song)
end
sorted
end 

  def self.all
    @@all
  end
  
end

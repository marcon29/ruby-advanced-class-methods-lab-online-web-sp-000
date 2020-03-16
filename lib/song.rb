class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self  # self is instance - adds instance to @@all
  end

  def self.create
    # self.new.save.last
    song = self.new.save
    song
  end

end

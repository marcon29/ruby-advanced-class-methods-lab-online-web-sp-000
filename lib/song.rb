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
    self.new.save.last
  end

  def self.new_by_name(name)
    self.create.name = name
    self.all.last
  end

  def self.create_by_name(name)
    self.create.name = name
    self.all.last
  end

end

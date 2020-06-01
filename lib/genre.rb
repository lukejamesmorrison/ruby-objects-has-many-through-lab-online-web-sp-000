class Genre

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.filter { |song| song.genre == self }
  end

end

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = Song.new(filename.split("-")[1])
    song.artist = song.artistname=(filename.split("-")[0])
    song.artist.add_song(song)
  end

  def self.artistname=(name)
    artist = Artist.find_or_create_by_name(name)
  end
end

require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(filepath)
    @path = filepath
  end

  def files
    my_directory = Dir.new(@path)
    @files = my_directory.glob("*.mp3")
  end

  def import
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end

require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(filepath)
    @path = filepath
  end

  def files
    Dir.chdir(@path)
    @files = Dir.glob("*.mp3")
    Dir.chdir("~/")
  end

  def import
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end

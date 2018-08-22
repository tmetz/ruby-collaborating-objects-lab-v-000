require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(filepath)
    @path = filepath
    @files = files
  end

  def files
    Dir.chdir(@path)
    file_list = Dir.glob("*.mp3")
    file_list
  end

  def import
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end

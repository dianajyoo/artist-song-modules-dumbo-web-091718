require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods

  @@all = []

  def initialize
    super
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

end

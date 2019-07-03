require "pry"

class Patient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
  end

end

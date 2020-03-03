class Shift

  attr_reader :key

  def initialize(key)
    @key = key
    @hash = {:A => "", :B => "", :C => "", :D => ""}
  end
end

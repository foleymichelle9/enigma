class Key

  attr_reader :key

  def initialize(key)
    @key = key
    @hash = {:A => "", :B => "", :C => "", :D => ""}
  end


  def generate_key(key)
    if key.length == 5
      @key = key
    else
      @key = 5.times.map{Random.rand(10)}.join.to_s
    end
  end


end

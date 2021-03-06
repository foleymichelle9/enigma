require 'date'
class Key

  attr_reader :key, :date

  def initialize(key)
    @date = date
    @key = key
    @hash = {:A => "", :B => "", :C => "", :D => ""}
  end

  def character_set
    ("a".."z").to_a << " "
 end

  def generate_key(key)
    if key.length == 5
      @key = key
    else
      @key = 5.times.map{Random.rand(10)}.join.to_s
    end
  end

  def key_shift(key)
    @hash[:A] += key[0..1]
    @hash[:B] += key[1..2]
    @hash[:C] += key[2..3]
    @hash[:D] += key[3..4]
    @hash
  end

  def format_date(date)
    date.strftime("%d%m%y")
  end

  def square_date(date)
    @date.to_i ** 2
  end
end

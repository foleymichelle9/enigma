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
  @key_hash[:A] += key[0..1]
  @key_hash[:B] += key[1..2]
  @key_hash[:C] += key[2..3]
  @key_hash[:D] += key[3..4]
  @key_hash
  end

  def format_date(date)
    date.strftime("%d%m%y")
  end

  def test_it_can_square_date
   date = Date.new(1995, 8, 4)
   assert_equal 1672401025, key.square_date(date)
 end

end

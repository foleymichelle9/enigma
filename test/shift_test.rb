require_relative 'test_helper'
require './lib/shift'

class KeyTest < Minitest::Test


  def test_it_exists
    key = Key.new("02715")
    assert_instance_of Key, key
  end

  def test_it_has_string
    key = Key.new("02715")
    assert_equal "02715", key.key
  end

  def test_key_length
    key = Key.new("02715")
    assert_equal 5, key.key.length
  end

  def test_key_can_be_generated
    key = Key.new("02715")
    assert_equal "02715", key.generate_key("02715")
  end

  def test_key_can_shift
    key = Key.new("02715")
    expected = { :A => "02", :B => "27", :C => "71", :D => "15"}
    assert_equal expected, key.key_shift("02715")
  end

  def test_it_can_format_date
  date = Date.new(1995, 8, 4)
  assert_equal "040895", key.format_date(date)
  end
end

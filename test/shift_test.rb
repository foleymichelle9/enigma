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
   assert_equal 5, key.key.length
  end

  def test_key_can_be_generated
   assert_equal "02715", key.generate_key("02715")
  end
end

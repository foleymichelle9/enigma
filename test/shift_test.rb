require_relative 'test_helper'
require './lib/shift'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new
    assert_instance_of Shift, shift
  end

  def test_it_has_attributes
    shift = Shift.new
    key = Key.new("02715")
    assert_equal "02715", key.new
  end
end

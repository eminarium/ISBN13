require 'minitest/autorun'
require_relative 'isbn13'

class Isbn13Test < Minitest::Test
  def test_basic_non_0
    assert_equal 4, Isbn13.new("9780143007234").calculate_check_digit
    assert_equal 2, Isbn13.new("9781861972712").calculate_check_digit
  end

  def test_basic_equal_to_0
    assert_equal 0, Isbn13.new("9782460702120").calculate_check_digit
  end

  def test_validity_true_non_0
    assert_equal false, Isbn13.new("9780143007232").valid?
  end

  def test_validity_false_non_0
    assert_equal true, Isbn13.new("9780143007234").valid?
  end

  def test_validity_false_equal_to_0
    assert_equal false, Isbn13.new("9782460702110").valid?
  end
  
  def test_validity_true_equal_to_0
    assert_equal true, Isbn13.new("9782460702120").valid?
  end  
end

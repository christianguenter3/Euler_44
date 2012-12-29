require_relative 'Euler44'
require 'test/unit'

class TestEuler44 < Test::Unit::TestCase
  
  def test_find_result
    assert_equal(5482660,@euler44.find_result)
  end
  
  def setup 
    @euler44 = Euler44.new
  end
  
end

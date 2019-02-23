require 'minitest/autorun'
require_relative 'foobar'

# Too lazy to document the tests; they say they should be self explanatory!
class TestFooBar < MiniTest::Test
  def setup
    puts 'Starting test...'
  end

  def test_multiples_of_three
    result = foo_bar(3)
    assert_equal('Foo', result)
  end

  def test_multiples_of_five
    result = foo_bar(5)
    assert_equal('Bar', result)
  end

  def test_multiples_of_both
    result = foo_bar(15)
    assert_equal('FooBar', result)    
  end

  def test_multiples_of_none
    result = foo_bar(16)
    assert_equal('16', result)    
  end

end

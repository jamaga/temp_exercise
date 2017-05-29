require 'test/unit'

class FooBar
  attr_accessor :alpha

  def transform
    alpha.select do |el|
      el.is_a?(String) && !el.empty?
    end.join(' ')
  end
end

class FooBarTest < Test::Unit::TestCase

  def test_foo_bar
    a = [
        '', 'Hello', nil, '', 'World', '!!!', 2,
    ]
    o = FooBar.new
    o.alpha = a

    assert_equal 'Hello World !!!', o.transform
  end

end



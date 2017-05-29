require 'test/unit'

class Foo
  attr_accessor :names, :ids, :sources

  def initialize
    @names = { 'alicja' => 'a', 'basia' => 'b', 'tomek' => 't' }
    @ids = { a: 18, b: 10, t: 2 }
    @sources = [
        { id: 18, full_name: 'Alicja W.' },
        { id: 2, full_name: 'Tomasz Z.' },
        { id: 10, full_name: 'Barbara K.' },
    ]
  end

  def get(name)
    if @names[name] == nil
      raise RuntimeError, 'Not found!'
    else
      @ids[@names[name].to_sym]
    end
  end

  def full_name(name)
    id = get(name)
    @sources.select do |one_h|
      one_h[:id] == id
    end.first[:full_name]
  end

  def list
    @sources.map do |one_h|
      one_h[:full_name]
    end
  end

end

class FooTest < Test::Unit::TestCase

  def test_foo
    f = Foo.new
    assert_raise(RuntimeError.new('Not found!')) {f.get('monika')}
    assert_equal 18, f.get('alicja')

    assert_equal 'Alicja W.', f.full_name('alicja')
    assert_raise(RuntimeError.new('Not found!')) {f.full_name('monika')}

    assert_equal ['Alicja W.', 'Tomasz Z.', 'Barbara K.'], f.list
  end

  def test_new_data
    f = Foo.new
    f.names['anka'] = 'an'
    f.ids[:an] = 15
    f.sources << { id: 15, full_name: 'Anna O.' }

    assert_equal 15, f.get('anka')
    assert_equal 'Anna O.', f.full_name('anka')
    assert_equal ['Alicja W.', 'Tomasz Z.', 'Barbara K.', 'Anna O.'], f.list
  end

end



# f.get('anka') # => 15
# f.full_name('anka') # => 'Anna O.'
# f.list # => ['Alicja W.', 'Tomasz Z.', 'Barbara K.', 'Anna O.']
#

#
# f = Foo.new
# f.get('monika') # => "Not found!"
# f.get('alicja') # => 18
#
# sources = [
#     { id: 18, full_name: 'Alicja W.' },
#     { id: 2, full_name: 'Tomasz Z.' },
#     { id: 10, full_name: 'Barbara K.' },
# ]
#
# f.full_name('alicja') # => Alicja W.




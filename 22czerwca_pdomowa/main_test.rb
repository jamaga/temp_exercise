require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_main

    assert_equal ({ a1: 10, a2: 10, a3: 4, a4: 6 }), Main.zamieniaj([
      [{ a2: [1, 2] }],
      [{ a1: [3, 3] }, [{ a2: 1, a3: [1,2,0] }]],
      { a1: 4, a2: 5 },
      { a3: 1, a4: [1, 2, 3] },
      { a2: 1 },
    ])

    # assert_equal ({ a1: 15 }), Main.zamieniaj([
    #     [{ a1: 1 }, [{ a1: 2 }, { a1: [1, { a1: 5 }, [{ a1: [1,2,3] }]] }]],
    #     { a1: 1 }
    # ])
  end

end
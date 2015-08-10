class Data

  class << self
    #jesli mamy self - tzn ze wywolujemy metode statyczna, metoda statyczna nie wymaga instancji klasy

    def all
      (1..10).to_a
    end

    def created
      [4, 5, 6, 8, 9]
    end

    def users
      [1, 2, 4, 5, 6]
    end

    def accounts
      [3, 7, 8, 9, 10]
    end

    def updated
      [2, 3, 6, 7, 8, 9, 10]
    end

  end
end

class Activity

  class << self
    def find(*params)
      results = Data.all
      #puts params[0][:indexes][:type].inspect
      unless params.empty? #unless zamiat if  to samo !params.empty
        types = []
        [*params[0][:indexes][:type]].each do |method|
          #types = Data.send(method) | types
          types |= Data.send(method)
          #chodzimy po typach  w tablicy, user type - zmienna przy kazdej iteracji teraz, kazda metode musimy oddzielneiw wywolac
        end

        actions = []
        [*params[0][:indexes][:action]].each do |method|
          actions |= Data.send(method)
        end

        results = results & types & actions
        #results = Data.send(params[0][:indexes][:type]) & Data.send(params[0][:indexes][:action]) & results
      end
      results
      #[*params[0][:indexes][:type]] niezaleznie co jest w typie - zawsze zrzutuje na tablice

    end
  end
end


if __FILE__ == $0

  require 'minitest/autorun'

  class ActivityTest < Minitest::Test

    def test_one
      assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], Activity.find
    end

    def test_two
      assert_equal [4, 5, 6], Activity.find(:indexes => {:type => :users, :action => :created})
    end

    def test_three
      assert_equal [2, 3, 6, 7, 8, 9, 10],
                   Activity.find(:indexes => {:type => [:accounts, :users], :action => :updated})
    end

    def test_four
      assert_equal [2, 3, 4, 5, 6, 7, 8, 9, 10],
                   Activity.find(:indexes => {:type => [:accounts, :users], :action => [:updated, :created]})
    end

    def test_five
      assert_equal [3, 7, 8, 9, 10],
                   Activity.find(:indexes => {:type => :accounts, :action => [:updated, :created]})
    end
  end
end
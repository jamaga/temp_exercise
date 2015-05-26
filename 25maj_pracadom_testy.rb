require 'test/unit'
require './25maj_pracadom'

class BaseTest < Test::Unit::TestCase

  def test_when_not_adding_person_returns_nil
    b = Base.new
    assert_equal nil, b.get_email('olek')
  end

  def tests_adding_new_persons_data
    b = Base.new
    b.add({'name' => 'Ala', 'email' => 'ala@main.com'})
    assert_equal [{'name' => 'Ala', 'email' => 'ala@main.com'}], b.baza
  end

  def tests_deleting
    b = Base.new
    b.add({'name' => 'Ala', 'email' => 'ala@main.com'})
    b.delete('Ala')
    assert_equal [], b.baza
  end

  def tests_purging
    b = Base.new
    b.add({'name' => 'Ala', 'email' => 'ala@main.com'})
    b.purge
    assert_equal [], b.baza
  end

  def tests_after_adding_new_checks_email
    b = Base.new
    b.add({'name' => 'Ala', 'email' => 'ala@main.com'})
    #b.get_email('Ala')
    assert_equal 'ala@main.com', b.get_email('Ala')

  end

  def tests_after_adding_two_elem
    b = Base.new
    b.add({'name' => 'Ala', 'email' => 'ala@main.com'})
    b.add({ 'name' => 'Piotr', 'email' => 'example@main.com' })
    assert_equal [{'name' => 'Ala', 'email' => 'ala@main.com'}, { 'name' => 'Piotr', 'email' => 'example@main.com' } ], b.get_all
  end

end



#testy maja sprawdzac funkcjonalnosc

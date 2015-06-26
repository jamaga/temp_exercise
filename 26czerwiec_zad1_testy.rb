require 'test/unit'
require './26czerwiec_zad1'

class TranslateTest < Test::Unit::TestCase

  def test_trans_method
    assert_equal Translate.instance.trans("[[t.it_is_text]] 8:00 [[t.morning_text]]"), "Jest godzina 8:00 rano"
  end

  def test_if_no_translate #jak nie ma klucza - ma byc puste
    assert_equal Translate.instance.trans("[[t.it_is_text_not_exists]] 8:00 [[t.morning_text_exists]]"), " 8:00 "
  end

end
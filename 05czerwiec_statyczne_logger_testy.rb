require 'test/unit'
require './05czerwiec_statyczne_logger'

class SimpleLoggerTest < Test::Unit::TestCase

  def test_error
    assert_equal "#{Time.now} | error | Some serious problem", SimpleLogger.error("Some serious problem")
  end

  def test_info
    assert_equal "#{Time.now} | info | some info", SimpleLogger.info("some info")
  end

  def test_warning
    assert_equal "#{Time.now} | warning | some warning", SimpleLogger.warning("some warning")
  end

end
# napisz program który ma działać jak logger (metody statyczne)
# Metody: error, warning, info
# Format: "#{Time.now} | #{message_type}: #{message}\n"
# Output na ekran i do pliku.
#
#     Przypadek uzycia:
#                   SimpleLogger.error("Some serious problem")
# SimpleLogger.info("Something you might want to know")
# SimpleLogger.write("log.txt")

class SimpleLogger

  def self.error(msg) #statyczne wywolanie w testach
    show_message("error", msg)
  end

  def self.info(msg)
    show_message("info", msg)
  end

  def self.warning(msg)
    show_message("warning", msg)
  end

  private

  def self.show_message(type, msg)
    "#{Time.now} | #{type} | #{msg}"
  end

end


#
# SimpleLogger.error("Some serious problem")
# SimpleLogger.info("Something you might want to know")
# SimpleLogger.write("log.txt")
#

# mam dostac to:
# SimpleLogger.errror “ssss”
# # => 2015-06-05 | error | ssss
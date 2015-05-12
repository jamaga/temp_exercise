require 'time'

class Date12may
  attr_reader :good_time

  def initialize(file)
    @good_time = []
    File.read(file).split("\n").each do |line|
      @good_time << Time.at(line.to_i)
    end
  end

end

#jesli cche wywolac funkcje i element np zerowy (operowac n afunkcji), musimy uzyc pustych nawiasow!

class Timer
  attr_accessor :seconds

  def initialize(num)
    @seconds = num
  end

  def time_string
    time = @seconds
    hours = time / 3600
    minutes = (time % 3600) / 60
    time = (time % (3600)) % 60
    print_num(hours) + ':' + print_num(minutes) + ':' + print_num(time)
  end

  def print_num(num)
    if num.to_s.length == 1
      "0" + num.to_s
    else
      num.to_s
    end
  end
end
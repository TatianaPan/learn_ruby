class Timer
  attr_reader :seconds
  attr_writer :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    sec = self.seconds % 60
    minutes = (self.seconds / 60).to_int
    if minutes > 59
      hours = (minutes / 60).to_int
      minutes = minutes % 60
    else
      hours = 0
    end

    return "#{padded(hours)}:#{padded(minutes)}:#{padded(sec)}"
  end

  #write your code here

  def padded(int)
    if int < 10
      return "0#{int}"
    else
      return "#{int}"
    end
  end

end

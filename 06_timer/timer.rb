class Timer
  #write your code here
  def initialize (seconds = 0)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string 
    seconds = @seconds % 60
    minutes = (@seconds / 60) % 60
    hours = (@seconds / 3600) % 60 

    if seconds < 10
      seconds = "0" + seconds.to_s
    end

    if minutes < 10
      minutes = "0" + minutes.to_s
    end

    if hours < 10
      hours = "0" + hours.to_s
    end

    time = hours.to_s + ":" + minutes.to_s + ":" + seconds.to_s

    return time
  end

end

class Timer
  def initialize
    @seconds = 0
    @time_string = '00:00:00'
  end

  def seconds
    @seconds
  end

  def time_string
    @time_string
  end

  def seconds=(seconds)
    if seconds <= 9 && seconds >=0
      @time_string = '00:00:0'+seconds.to_s
    elsif seconds >=10 && seconds <=59
      @time_string = '00:00:'+seconds.to_s
    elsif seconds >=60 && seconds <3600
      minutes = seconds / 60
      sec = seconds % 60
      if minutes < 10 then minutes = '0' + minutes.to_s end
      if sec < 10 then sec = '0' + sec.to_s end
      @time_string = "00:#{minutes}:#{sec}"
    elsif seconds >= 3600
      hours = seconds / 3600
      minutes = (seconds - (hours * 3600)) / 60
      sec = (seconds - (hours * 3600)) % 60
      if hours < 10 then hours = '0' + hours.to_s end
      if minutes < 10 then minutes = '0' + minutes.to_s end
      if sec < 10 then sec = '0' + sec.to_s end
      @time_string = "#{hours}:#{minutes}:#{sec}"
    end
  end

end
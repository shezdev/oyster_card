class Journey

attr_reader :entry_station

  MIN_FARE = 1
  PENALTY_FARE = 6

  def start(station)
    @entry_station = station
  end

  def finish
  end

end

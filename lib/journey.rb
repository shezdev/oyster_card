class Journey

attr_reader :entry_station , :exit_station

  MIN_FARE = 1
  PENALTY_FARE = 6

  def start(station)
    @entry_station = station
  end

  def finish(station)
    @exit_station = station
  end

  def fare
    entry_station.nil? ? PENALTY_FARE : MIN_FARE
  end

  def complete?
    !entry_station.nil? && !exit_station.nil?
  end

end

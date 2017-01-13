require 'journey'

class JourneyLog
  attr_reader :journeys, :entry_station, :journey

  def initialize
      @journeys = []
      @journey = Journey.new
  end


  def start(station)
    journey.start(station)
  end

  def finish(station)
    journey.finish(station)
    @journeys << {start: journey.entry_station, end: journey.exit_station}
    @journey = Journey.new
  end

=begin
  def touch_in(station)
    journey.start(station)
    @entry_station = station
  end

  def touch_out(station)
    journey.finish(station)
    deduct(journey.fare)
    @journeys << {start: journey.entry_station, end: journey.exit_station}
    @journey = Journey.new
  end
=end

end

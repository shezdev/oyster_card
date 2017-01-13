# In ~/Google Drive/Projects/oyster_card/lib/oystercard.rb
require_relative "station"
require_relative "journey"

class Oystercard

BALANCE_LIMIT = 90
MIN_FARE = 1
PENALTY_FARE = 6
attr_reader :balance, :entry_station, :journeys, :journey

  def initialize
    @balance = 0
    @journeys = []
    @journey = Journey.new
  end

  def top_up(amount)
    raise exceed_limit_msg if @balance + amount > BALANCE_LIMIT
    add(amount)
  end

  def touch_in(station)
    raise insufficient_funds_msg if @balance < MIN_FARE
    journey.start(station)
    @entry_station = station
  end

  def touch_out(station)
    journey.finish(station)
    deduct(journey.fare)
    @journeys << {start: journey.entry_station, end: journey.exit_station}
    @journey = Journey.new
  end

  private

  def charge_fare
    entry_station.nil? ? deduct(PENALTY_FARE) : deduct(MIN_FARE)
  end

  def add(amount)
    @balance =+ amount
  end

  def deduct(fare)
    @balance -= fare
  end

  def in_journey?
    !entry_station.nil? #i.e. entry station empty is false
  end

  def exceed_limit_msg
    "ERROR! You have exceeded your set balance limit of £#{BALANCE_LIMIT}"
  end

  def insufficient_funds_msg
    "Unable to touch in - insufficient funds"
  end

end

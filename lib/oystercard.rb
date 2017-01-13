# In ~/Google Drive/Projects/oyster_card/lib/oystercard.rb
require_relative "station"

class Oystercard

BALANCE_LIMIT = 90
MIN_FARE = 1
attr_reader :balance , :entry_station , :exit_station

  def initialize
    @balance = 0
    @in_use = false
  end

  def top_up(amount)
    raise exceed_limit_msg if @balance + amount > BALANCE_LIMIT
    @balance =+ amount
  end

  def touch_in(station)
    raise insufficient_funds_msg if @balance < MIN_FARE
    @in_use = true
    @entry_station = station
  end

  def touch_out
    @in_use = false
    deduct(MIN_FARE)
        @entry_station = nil
  end

  def deduct(fare)
    @balance =- fare
  end

  # private

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

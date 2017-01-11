# In ~/Google Drive/Projects/oyster_card/lib/oystercard.rb

class Oystercard

BALANCE_LIMIT = 90
FARE = 1

# 1st rspec test
attr_reader :balance #:entry_station

# # You need this to make the instance variable '@balance' below available to the instance when calling it directly. e.g. card = Oystercard.new, card.balance won't work, instead use card.get_balance but a SHORTCUT is to use attr_reader.

  def initialize
    @balance = 0
    @in_use = false #initially the card isn't in use
    # @entry_station = " "
  end

## Using attr_reader is a SHORTCUT for this method
# def get_balance
#   @balance
# end

# 2nd - 4th rspec tests
  def top_up(amount)
   raise "ERROR! You have exceeded your set balance limit of £#{BALANCE_LIMIT}" if @balance + amount > BALANCE_LIMIT
  #@balance = @balance + top_up_amt has been refactored to:
  @balance =+ amount
  end

  # def touch_in(station)
  def touch_in
    raise "Unable to touch in - insufficient funds" if @balance < FARE
    @in_use = true
    # @entry_station = station
  end

  def touch_out
    @in_use = false
    deduct(FARE)
  end

  def in_journey?
    @in_use
  end

  def deduct(fare)
    @balance =- fare
  end

end

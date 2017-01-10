# In ~/Google Drive/Projects/oyster_card/lib/oystercard.rb

class Oystercard

BALANCE_LIMIT = 90

# 1st rspec test
attr_reader :balance # # You need this to make the instance variable '@balance' below available to the instance when calling it directly. e.g. card = Oystercard.new, card.balance won't work, instead use card.get_balance but a SHORTCUT is to use attr_reader.

  def initialize
    @balance = 0
  end

## Using attr_reader is a SHORTCUT for this method
# def get_balance
#   @balance
# end

# 2nd and 3rd rspec tests
  def top_up(amount)
    raise "ERROR! You have exceeded your set balance limit of £#{BALANCE_LIMIT}" if @balance + amount > BALANCE_LIMIT
    #@balance = @balance + top_up_amt has been refactored to:
    @balance =+ amount



  end



end

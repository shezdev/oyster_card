# In ~/Google Drive/Projects/oyster_card/spec/oystercard_spec.rb

require "oystercard"

describe Oystercard do
  # 1st test
  it { is_expected.to respond_to(:top_up).with(1).argument }

  #6th test
  it {is_expected.to respond_to :in_journey?}

  #7th test
  it {is_expected.to respond_to :touch_in}

  #8th test
  it {is_expected.to respond_to :touch_out}

  #2nd test
  context "When a new object is initialized" do
    it "has a default balance of 0" do
      expect(subject.balance).to eq(0)
    end
  end

  #3rd test
  describe "#top_up(amount)" do
    context "when invoked with the top-up value as the arg" do
      it "increases balance by top_up value" do
       expect{ subject.top_up 5 }.to change{ subject.balance }.by 5
      end
    end

    #4th test
    context "when the balance limit of £90 is exceeded" do
      it "throws an exception" do
       limit = Oystercard::BALANCE_LIMIT # you have to use the class name here, because BALANCE_LIMIT is a class constant.
        expect{ subject.top_up limit + rand(100) }.to raise_error("ERROR! You have exceeded your set balance limit of £#{limit}")
      end
    end
  end # end of describe block

  #5th test
  describe "#deduct(fare)" do
    context "when invoked with the fare value as the arg" do
      it "reduces balance by the fare value" do
        expect{ subject.deduct 5 }.to change{ subject.balance }.by(-5)
      end
    end
  end




end #of describe Oystercard

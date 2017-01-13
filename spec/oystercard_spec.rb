# In ~/Google Drive/Projects/oyster_card/spec/oystercard_spec.rb

require "oystercard"

describe Oystercard do
  it { is_expected.to respond_to(:top_up).with(1).argument }
  it {is_expected.to respond_to :in_journey?}
  it {is_expected.to respond_to :touch_in}
  it {is_expected.to respond_to :touch_out}

  context "When a new object is initialized" do
    it "has a default balance of 0" do
      expect(subject.balance).to eq(0)
    end
  end

  describe "#top_up(amount)" do
    context "when invoked with the top-up value as the arg" do
      it "increases balance by top_up value" do
       expect{ subject.top_up 5 }.to change{ subject.balance }.by 5
      end
    end

    context "when the balance limit of £90 is exceeded" do
      it "throws an exception" do
       limit = Oystercard::BALANCE_LIMIT # you have to use the class name here, because BALANCE_LIMIT is a class constant.
        expect{ subject.top_up limit + 1 }.to raise_error("ERROR! You have exceeded your set balance limit of £#{limit}")
      end
    end
  end

  describe "#touch_in" do
    context "when the customer touches in at the barriers" do
        it "can touch in" do
        subject.balance > Oystercard::MIN_FARE
        subject.top_up(10)
        subject.touch_in
        expect(subject).to be_in_journey
        end
        it "throws an error if insufficient funds" do
        subject.balance < Oystercard::MIN_FARE
        expect{subject.touch_in}.to raise_error "Unable to touch in - insufficient funds"
        end
        # it "records the entry station" do
        #   expect{subject.touch_in(subject.entry_station)}.to eq (" ")
      #  end
    end
  end

  describe "#touch_out" do
    context "when the customer touches out at the barriers" do
      it "is in no longer in use" do
        subject.top_up(10)
        subject.touch_in
        subject.touch_out
          expect(subject).not_to be_in_journey
      end
    end
  end

  describe "#deduct(fare)" do
    context "when invoked with the fare value as the arg" do
      it "reduces balance by the fare value" do
        expect{ subject.deduct Oystercard::MIN_FARE }.to change{ subject.balance }.by -(Oystercard::MIN_FARE)
      end
    end
  end


  describe "#top_up(amount)" do
    context "when invoked with the top-up value as the arg" do
      it "increases balance by top_up value" do
       expect{ subject.top_up 5 }.to change{ subject.balance }.by 5
      end
    end
  end



 end #of describe Oystercard

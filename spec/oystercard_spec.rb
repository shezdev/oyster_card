# In ~/Google Drive/Projects/oyster_card/spec/oystercard_spec.rb

require "oystercard"

describe Oystercard do
  let(:station) {instance_double(Station)}
  let(:station1) {instance_double(Station)}
  limit = Oystercard::BALANCE_LIMIT
  min_fare = Oystercard::MIN_FARE

  context "When a new object is initialized" do
    it "has a default balance of 0" do
      expect(subject.balance).to eq(0)
    end
  end

  describe "#top_up" do
    context "when invoked with the top-up value as the arg" do
      it "increases balance by top_up value" do
       expect{ subject.top_up 5 }.to change{ subject.balance }.by 5
      end
    end

    context "when the balance limit of £#{limit} is exceeded" do
      it "throws an exception" do
        msg = "ERROR! You have exceeded your set balance limit of £#{limit}"
        expect{ subject.top_up limit + 1 }.to raise_error(msg)
      end
    end
  end

  describe "#touch_in" do
    context "when the customer touches in at the barriers" do
      it "throws an error if insufficient funds" do
        expect{subject.touch_in(station)}.to raise_error "Unable to touch in - insufficient funds"
      end
      it "can touch in" do
        subject.top_up(10)
        subject.touch_in(station)
        expect(subject.entry_station).not_to eq nil
      end
        it "records the entry station" do
          subject.top_up(10)
          subject.touch_in(station)
          expect(subject.entry_station).to eq (station)
        end
    end
  end

  describe "#touch_out" do
    context "when the customer touches out at the barriers" do
      it "is in no longer in use" do
        subject.top_up(10)
        subject.touch_in(station)
        subject.touch_out(station1)
        expect(subject.entry_station).to eq nil
      end
      it "reduces balance by the fare value" do
        expect{ subject.touch_out station }.to change{ subject.balance }.by -(min_fare)
      end
    end
  end

  describe "#journeys" do
    context "records a list of journeys" do
      it "starts empty" do
        expect(subject.journeys).to be_a Array
      end
      it "records one journey after touching in and out" do
        subject.top_up(10)
        subject.touch_in(station)
        subject.touch_out(station1)
        expect(subject.journeys).to include { {start: station, end: station1} }
      end
    end
  end

 end #of describe Oystercard

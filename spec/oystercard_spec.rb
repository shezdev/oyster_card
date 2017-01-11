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
        expect{ subject.top_up limit + 1 }.to raise_error("ERROR! You have exceeded your set balance limit of £#{limit}")
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

  #9th test
  describe "#touch_in" do
    context "when the customer touches in at the barriers" do
      it "can touch in" do
        subject.balance > Oystercard::FARE
        subject.top_up(10)
        subject.touch_in
        expect(subject).to be_in_journey
      end
      it "throws an error if insufficient funds" do
        subject.balance < Oystercard::FARE
        expect{subject.touch_in}.to raise_error "Unable to touch in - insufficient funds"

      end
    end
  end # end of describe block

  #10th test
  describe "#touch_out" do
    context "when the customer touches out at the barriers" do
      it "is in no longer in use" do
        subject.top_up(10)
        subject.touch_in
        subject.touch_out
          expect(subject).not_to be_in_journey
      end
    end
  end # end of describe block


  describe "#top_up(amount)" do
    context "when invoked with the top-up value as the arg" do
      it "increases balance by top_up value" do
       expect{ subject.top_up 5 }.to change{ subject.balance }.by 5
      end
    end
  end

    # context "when there are insuffient funds on the card" do
    #   it "throws an exception" do
    #     expect{ subject.balance - 1 }.to raise_error("ERROR! You have insufficient funds on the card")
    #   end
    # end


 end #of describe Oystercard

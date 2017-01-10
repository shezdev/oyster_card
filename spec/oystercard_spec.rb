# In ~/Google Drive/Projects/oyster_card/spec/oystercard_spec.rb

require "oystercard"

describe Oystercard do
  # 1st test
  it { is_expected.to respond_to(:top_up).with(1).argument }

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
    # Write a test that checks the top_up method throws an exception if the new balance would exceed the limit.

    context "when the balance limit of £90 is exceeded" do
      it "throws an exception" do
        expect{ subject.top_up 91 }.to raise_error("ERROR! You have exceeded your set balance limit of £90")
      end
    end
  end

end

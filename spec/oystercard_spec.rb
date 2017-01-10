# In ~/Google Drive/Projects/oyster_card/spec/oystercard_spec.rb

require "oystercard"

describe Oystercard do

  context "When a new object is initialized" do
    it "has a default balance of 0" do
      expect(subject.balance).to eq(0)
    end
  end

  context "if a top_up method is invoked with the top-up value as the arg" do
    it { is_expected.to respond_to(:top_up).with(1).argument }
  end
  #
  # context "if a top_up method is invoked with the top-up value as the arg" do
  #    it "increases balance by top_up value" do
  #      expect{ subject.top_up 1 }.to change{ subject.balance }.by 1
  #   end
  # end




end

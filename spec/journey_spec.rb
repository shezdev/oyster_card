# In ~/Google Drive/Projects/oyster_card/spec/journey_spec.rb
require 'journey'

describe Journey do
  let(:station) {instance_double(Station)}
  let(:station1) {instance_double(Station)}
  min_fare = Journey::MIN_FARE
  penalty_fare = Journey::PENALTY_FARE

  describe "#start" do
    it 'sets entry station to given value' do
      subject.start(station)
      expect(subject.entry_station).to eq station
    end
  end

  describe "#finish" do
    it 'sets exit station to given value' do
      subject.finish(station1)
      expect(subject.exit_station).to eq station1
    end
  end

  describe "#fare" do
    it "charges min fare for a complete journey" do
      subject.start(station)
      subject.finish(station1)
      expect(subject.fare).to eq min_fare
    end
    it "charges penalty fare for incomplete journey" do
      subject.finish(station1)
      expect(subject.fare).to eq penalty_fare
    end
  end

  describe "#complete?" do
    it "returns true when a journey is complete" do
      subject.start(station)
      subject.finish(station1)
      expect(subject.complete?).to eq true
    end
    it "returns false when a journey is not complete" do
      subject.start(station)
      expect(subject.complete?).to eq false
    end
  end


end

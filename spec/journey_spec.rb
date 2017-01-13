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
    it 'finishes' do
      expect(subject.finish).to eq nil
    end
  end

end

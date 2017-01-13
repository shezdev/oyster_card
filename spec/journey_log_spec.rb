require 'journey_log'

describe JourneyLog do

  describe "#new" do
    it "starts with an empty log" do
      expect(subject.journeys).to be_a Array
    end
  end

  describe "#start" do
    it "records when a journey starts" do
      subject.start("here")
      expect(subject.journey.entry_station).to be_a String
    end
  end

  describe "#finish" do
    it "records when a journey finishes" do
      subject.finish("there")
      expect(subject.journey).to be_a Journey
    end
  end

  describe "#print" do
    it "prints the list of journeys" do
      subject.start("here")
      subject.finish("there")
      expect(subject.journeys).to include { {:start_point => "here", :end_point => "there"} }
    end
  end

end

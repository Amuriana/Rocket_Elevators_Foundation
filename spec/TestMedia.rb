require 'rspec/core'
require 'ElevatorMedia/ElevatorMedia.rb'

describe ElevatorMedia::Streamer, :type => :feature do
  describe "getContent" do
    context 'Get a joke' do
      it "return a joke as a string" do
        expect(ElevatorMedia::Streamer.getContent).to be_kind_of String

      end
    end
  end
end




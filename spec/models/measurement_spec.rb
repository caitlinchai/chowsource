require 'rails_helper'

RSpec.describe Measurement, type: :model do
  let(:measurement){Measurement.create(name:"lbs")}

  describe ".name" do
    it "has name attribute" do
      expect(measurement.name).to eq("lbs")
    end
  end
end

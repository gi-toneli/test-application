require 'rails_helper'

RSpec.describe PowerGenerator, type: :model do
  context "Instance tests" do
    it "should be invalid an instance of subject" do
      expect(subject.invalid?).to eql(true)
    end

    it "should be valid an instance of subject" do
      power_generator = build(:power_generator)
      expect(power_generator.valid?).to eql(true) 
      expect(power_generator.errors).to be_empty
    end
  end
end

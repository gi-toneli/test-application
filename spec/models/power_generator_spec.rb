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

  context "methods with valid attributes" do
    it "method with a collection of string attributes" do
      expect(PowerGenerator::string_attributes.count).to eql(4)
    end

    it "method with a collection of float attributes" do
      expect(PowerGenerator::float_attributes.count).to eql(6)
    end

    it "method with a collection of integer attributes" do
      expect(PowerGenerator::integer_attributes.count).to eql(1)
    end
    
  end
  
end

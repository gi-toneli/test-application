require 'rails_helper'

RSpec.describe PowerGeneratorFilter do
  context "methods with valid attributes and options to filter" do
    it "collection of string attributes" do
      expect(PowerGeneratorFilter::string_attributes.count).to eql(4)
    end

    it "collection of float attributes" do
      expect(PowerGeneratorFilter::float_attributes.count).to eql(6)
    end

    it "collection of integer attributes" do
      expect(PowerGeneratorFilter::integer_attributes.count).to eql(1)
    end
  end
end

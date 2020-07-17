require 'rails_helper'

RSpec.describe PowerGeneratorFilter do
  context "valid attributes and options to filter" do
    it "collection of string attributes" do
      expect(PowerGeneratorFilter::string_attributes.count).to eql(4)
    end

    it "collection of float attributes" do
      expect(PowerGeneratorFilter::float_attributes.count).to eql(6)
    end

    it "collection of hash attributes" do
      expect(PowerGeneratorFilter::hash_attributes.count).to eql(6)
    end
  end

  # context "simple filter" do
  #   it "get results" do
  #     power_generator_filter = PowerGeneratorFilter.new({"str" => "mo"})
  #     results = power_generator_filter.filter
  #   end
    
    
  # end
  
end

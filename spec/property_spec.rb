require 'spec_helper'

describe Property do
  describe "validation" do
    it "requires a street number" do
      Property.new.should have(1).errors_on(:street_number)
    end
    it "requires a state" do
      Property.new.should have(1).errors_on(:state)
    end

    it "requires a street name of appropriate minimum length" do
      Property.new(street_name: 'AA').should have(1).errors_on(:street_name)
      Property.new(street_name: 'AAA').should have(0).errors_on(:street_name)
    end

    it "requires a suburb name of appropriate minimum length" do
      Property.new(suburb: 'AA').should have(1).errors_on(:suburb)
      Property.new(suburb: 'AAA').should have(0).errors_on(:suburb)
    end 

    it "requires a postcode of 4 characters" do
      Property.new(postcode: 'AA').should have(1).errors_on(:postcode)
      Property.new(postcode: 'AAAA').should have(0).errors_on(:postcode)
    end 
  end
end
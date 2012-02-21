require 'helper'

describe Measurements do
    it "should return the available system types" do
        Measurements.available_types.should == Measurements::Type.available_types
    end
    
    it "should return the available units that are implemented" do
        Measurements.available_units.should == Measurements::Unit.available_units
    end

    it "should create an Ounce object with quantity of 3" do
        ounce = Measurements.create_unit :ounce, 3
        ounce.class.should == Measurements::Unit::Ounce && ounce.quantity.should == 3
    end

    it "should create a Pound object with quantity of 4" do
        pound = Measurements.new_unit :pound, 4
        pound.class.should == Measurements::Unit::Pound && pound.quantity.should == 4
    end
end
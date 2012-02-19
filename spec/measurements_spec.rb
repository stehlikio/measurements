require 'helper'

describe Measurements do
    it "should return the available system types" do
        Measurements::available_types.should == Measurements::Type.available_types
    end
    
    it "should return the available units that are implemented" do
        Measurements::available_units.should == Measurements::Unit.available_units
    end
end
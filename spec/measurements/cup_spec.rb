require 'helper'

describe Measurements::Unit::Cup do
    it "should be unit type of neutral" do
        Measurements::Unit::Cup::UNIT_TYPE.should == Measurements::Type::NEUTRAL
    end
    
    it "should be measurement system type of cooking" do
        Measurements::Unit::Cup::UNIT_SYSTEM.should == Measurements::System::COOK
    end
end

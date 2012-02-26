require 'helper'

describe Measurements do
    it "should return the available system types" do
        Measurements.available_types.should == Measurements::Type.available_types
    end
    
    it "should return the available units that are implemented" do
        Measurements.available_units.should == Measurements::Unit.available_units
    end

    it "should create a 3 ounces object" do
        ounce = Measurements.create_unit :ounce, 3
        ounce.class.should == Measurements::Unit::Ounce && ounce.quantity.should == 3
    end

    it "should create a 4 pound object" do
        pound = Measurements.new_unit :pound, 4
        pound.class.should == Measurements::Unit::Pound && pound.quantity.should == 4
    end

    it "should raise an error if the unit requested has not been implemented" do
        expect{ Measurements.new_unit(:unimplemented_unit, 2) }.should raise_error()
    end

    it "should convert 1 quart to 4 cups" do
        quart = Measurements.new_unit :quart, 1
        cup = quart.convert_to :cup
        cup.quantity.should == 4
    end

    it "should convert 8 cups to 0.5 gallons" do
        cup = Measurements.new_unit :cup, 8
        gallon = cup.convert_to :gallon
        gallon.quantity.should == 0.5
    end
    
    it "should convert 6 teaspoons to 2 tablespoons" do
        teaspoon = Measurements.new_unit :teaspoon, 6
        tablespoon = teaspoon.convert_to :tablespoon
        tablespoon.quantity.should == 2
    end
    
    it "should raise an error if the unit type is set to solid and you try to convert to a fluid" do
        cup = Measurements.new_unit :cup, 2, :solid
        expect{ ounce = cup.convert_to(:gallon) }.should raise_error()
    end
    
    it "should raise an error if the unit type is set to fluid and you try to convert to a solid" do
        cup = Measurements.new_unit :gallon, 1
        expect{ ounce = cup.convert_to(:pound) }.should raise_error()
    end
    
    it "should raise an error if you try to set the unit type of a fluid only unit" do
        expect{ gallon = Measurements.new_unit :gallon, 1, :fluid }.should raise_error()
    end
    
    it "should raise an error if you try to set the unit type of a solid only unit" do
        expect{ pound = Measurements.new_unit :pound, 2, :solid }.should raise_error()
    end
    
    it "should raise an error when trying to set the unit type of a unit on the fly" do
        cup = Measurements.new_unit :gallon, 2
        expect { cup.type = :solid }.should raise_error()
    end
    
    it "should convert 2 feet to 24 inches" do
        feet = Measurements.new_unit :foot, 2
        inches = feet.convert_to :inch
        inches.quantity.should == 24
    end
    
    it "should convert 30 inches to 1.5 feet" do
        inches = Measurements.new_unit :inch, 30
        feet = inches.convert_to :foot
        feet.quantity.should == 2.5
    end
    
    it "should raise an error if you try to convert a unit across system types" do
        inches = Measurements.new_unit :inch, 55
        expect { cup = inches.convert_to :cup }.should raise_error()
    end
end
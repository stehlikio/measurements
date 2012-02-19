# Measurements Ruby Gem
This gem was created to assist in converting cooking measurements when scaling up a recipe.
I was having fun with it so I decided to go a little above and beyond.

## Using the Gem
Right now when I've been testing the gem inside irb I've been running the ruby line.

	$LOAD_PATH.unshift(File.dirname(__FILE__)+"/lib"); require 'measurements'

You should also note that this only works if you launch irb from within the measurements directory.

## Documentation
Working on that son, and you're looking at it.

## Usage Examples
Create an Ounce object with a quantity of 3oz

	ounce = Measurements::Unit::Ounce.new 3

Convert that 3oz object to a Pound object

	pound = ounce.convert_to :pound
	
Create an Ounce object with a type of solid. This would be used to make sure when you convert
using the smart convert (not yet implemented) the unit doesn't get converted to a fluid measurement

	ounce = Measurements::Unit::Ounce.new 3, :solid
	
Get the list of available units

	Measurements.available_units
	
Get the list of available types of units. ex: Solid, Fluid or Neutral

	Measurements.available_types
	
## Copyright
Copyright (c) 2012 Casey Stehlik.
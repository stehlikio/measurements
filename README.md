# Measurements Ruby Gem
This gem was created to assist in converting cooking measurements when scaling up a recipe.
I was having fun with it so I decided to go a little above and beyond.

## Using the Gem
Right now when I've been testing the gem inside irb I've been running the ruby line.

```ruby
$LOAD_PATH.unshift(File.dirname(__FILE__)+"/lib"); require 'measurements'
```

You should also note that this only works if you launch irb from within the measurements directory.

## Documentation
Working on that son, and you're looking at it.

## Usage Examples
Create an Ounce object with a quantity of 3oz

```ruby
ounce = Measurements::Unit::Ounce.new 3
```

**Notice:** You can now use the new helper method you create a unit instead of the way shown above

```ruby
ounce = Measurements.new_unit :ounce, 3
```

Convert that 3oz object to a Pound object

```ruby
pound = ounce.convert_to :pound
```

Create an Ounce object with a type of solid. This would be used to make sure when you convert
using the smart convert (not yet implemented) the unit doesn't get converted to a fluid measurement

```ruby
ounce = Measurements::Unit::Ounce.new 3, :solid
```
	
Get the list of available units

```ruby
Measurements.available_units
```
	
Get the list of available types of units. ex: Solid, Fluid or Neutral

```ruby
Measurements.available_types
```
	
## Getting Started with Development
Make sure you have rubygems installed. You can find instructions at [rubygems.org](http://docs.rubygems.org/read/chapter/3)

Have bundler installed on your system

	gem install bundler
	
Run bundler to make sure you have all the right gems

	bundle install
	
Generate some docs to browse while I work on getting some tests ready. After running the following command
browse to the doc directory and open the index.html file in your favorite browser.

	yardoc
	
## Copyright
Copyright (c) 2012 Casey Stehlik.
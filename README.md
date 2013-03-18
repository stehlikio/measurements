# Measurements Ruby Gem [![Gem Version](https://badge.fury.io/rb/measurements.png)](http://badge.fury.io/rb/measurements) [![Dependency Status](https://gemnasium.com/StehlikC/measurements.png)](https://gemnasium.com/StehlikC/measurements) [![Code Climate](https://codeclimate.com/github/StehlikC/measurements.png)](https://codeclimate.com/github/StehlikC/measurements)
This gem was created to assist in converting cooking measurements when scaling up a recipe.
I was having fun with it so I decided to go a little above and beyond.

**Note:** This project ended up getting bigger than I had expected and now there are quite a few things that need fixing.
I should have had a plan from the beginning...

## Using the Gem

Install it with

```shell
gem install measurements
```

and enjoy.

## Documentation
```shell
yardoc
```

## Usage Examples
Create an Ounce object with a quantity of 3oz

```ruby
ounce = Measurements.new_unit :ounce, 3
```

Convert that 3oz object to a Pound object

```ruby
pound = ounce.convert_to :pound
```

Convert the current unit by altering the unit itself

```ruby
ounce.convert_to! :pound
```

Create an Ounce object with a type of solid. This would be used to make sure when you convert
using the smart convert (not yet implemented) the unit doesn't get converted to a fluid measurement

```ruby
ounce = Measurements.new_unit :ounce, 3.5, :solid
```
	
Get the list of available units

```ruby
Measurements.available_units
=> [:ounce, :pound, :teaspoon, :tablespoon, :cup, :pint, :quart, :gallon, :inch, :foot, :yard, :furlong, :chain, :mile, :thou, :league]
```
	
Get the list of available types of units. ex: Solid, Fluid or Neutral

```ruby
Measurements.available_types
=> [:solid, :fluid, :neutral, :base] 
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

Right now when I've been testing the gem inside irb I've been running the ruby line.

```ruby
$LOAD_PATH.unshift(File.dirname(__FILE__)+"/lib"); require 'measurements'
```

You should also note that this only works if you launch irb from within the measurements directory.

If you want to be snazy and grab this line to load without using a text editor you can run one of these commands

##### Unix

```shell
cat README.md | grep "LOAD_PATH"
```

##### Windows

```shell
type README.md | find "LOAD_PATH"
```
	
## Copyright
Copyright (c) 2012 Casey Stehlik.

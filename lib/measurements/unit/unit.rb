module Measurements
    module Unit

        # A wrapper for all of the units, this class was added to make the conversion of classes
        #   keep the same object class instead of changing everytime you convert a unit.
        class Unit

            def initialize(klass)
                @klass = klass
            end

            # @see Measurements::Unit::BaseUnit#inspect
            def inspect
                self.quantity
            end

            # A pretty print method that will return a human readable version
            #   of a unit
            # @return [String] a human readable unit description
            def humanize
                return "#{self.quantity.to_s} #{self.unit_abbr}"
            end

            # @see Measurements::Unit::BaseUnit#type=
            def type=(type)
                @klass.type = type
            end

            # @see Measurements::Unit::BaseUnit#type
            def type
                @klass.type
            end

            # @see Measurements::Unit::BaseUnit#inspect
            def quantity
                @klass.quantity
            end

            # @see Measurements::Unit::BaseUnit#inspect
            def quantity=(quantity)
                @klass.quantity = quantity
            end

            # @see Measurements::Unit::BaseUnit#unit
            def unit
                @klass.unit
            end

            # @see Measurements::Unit::BaseUnit#unit_type
            def unit_type
                @klass.unit_type
            end

            # @see Measurements::Unit::BaseUnit#unit_system
            def unit_system
                @klass.unit_system
            end

            # @see Measurements::Unit::BaseUnit#unit_abbr
            def unit_abbr
                @klass.unit_abbr
            end

            # This method will call the current units convert_to method. This is the dangerous version and it will
            #   change the callers unit.
            # @see Measurements::Unit::BaseUnit#convert_to
            def convert_to!(type)
                @klass = @klass.convert_to(type)
            end

            # The safe version of converting a unit. This method will duplicate the caller object and return the new
            #   version of the object instead of the original caller
            # @param [Symbol] type the unit to be converted to
            # @return [Unit] the new Unit object
            def convert_to(type)
                new_unit = self.dup
                new_unit.convert_to!(type)
                new_unit
            end
        end

    end
end
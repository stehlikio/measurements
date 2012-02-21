module Measurements

    # Helper method to get what units are currently implemented
    # @return [Array] an Array of currently implemented units
    def available_units
        Measurements::Unit.available_units
    end
    
    # Helper method to get what types are available
    # @return [Array] an Array of types that are available
    def available_types
        Measurements::Type.available_types
    end

    # Helper method to create a unit class without having to explicitly
    #   call {Measurements::Unit::BaseUnit#initialize}
    # @param [Symbol] klass the class of the unit you wish to initialize
    # @param [Float] quantity the amount of the unit
    # @param [Symbol] type optional unit type such as :solid or :fluid
    # @return [BaseUnit] a new unit instance of class = klass
    def new_unit(klass, quantity, type = nil)
    end

    module_function :new_unit
    module_function :available_units
    module_function :available_types

    class << self
        alias_method :create_unit, :new_unit
    end

end
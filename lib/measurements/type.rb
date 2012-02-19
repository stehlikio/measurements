module Measurements
    module Type
        
        # Measurement state for unit of type solid
        SOLID = "solid"
        
        # Measurement state for unit of type fluid
        FLUID = "fluid"
        
        # Measurement state for unit that can be either a fluid or solid measure
        NEUTRAL = "neutral"
        
        # Helper method to get what types are available
        # @deprecated Use {Measurements#available_types} instead of this method because
        #   it's a more obvious method to use instead of diving down to the Type module.
        # @return [Array] an Array of types that are available
        def available_types
            self.constants.map{|types| types.downcase.to_sym}
        end
        
        module_function :available_types
        
    end
end
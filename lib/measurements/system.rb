module Measurements
    module System
        
        # System type for metric units
        SI = "metric"
        
        # System type for United States units
        IMPERIAL = "imperial"
        
        # System type for cooking units
        COOK = "cooking"
        
        # Helper method to get what systems are available
        # @deprecated Use {Measurements#available_systems} instead of this method because
        #   it's a more obvious method to use instead of diving down to the System module.
        # @return [Array] an Array of systems that are available
        def available_systems
            self.constants.map{|systems| systems.upcase.to_sym}
        end
        
        module_function :available_systems
        
    end
end
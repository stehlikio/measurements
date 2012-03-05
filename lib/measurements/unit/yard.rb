module Measurements
    module Unit
        
        # The implementation of a yard. A yard is a unit that belongs to the imperial unit 
        #   system.
        class Yard
            include BaseUnit
            
            # Type for the Yard unit
            UNIT_TYPE = Measurements::Type::BASE
            
            # System type for the Yard unit
            UNIT_SYSTEM = Measurements::System::IMPERIAL
        end
        
    end
end
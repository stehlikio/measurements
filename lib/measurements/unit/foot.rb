module Measurements
    module Unit
        
        # The implementation of a foot. A foot is a unit that belongs to the imperial unit 
        #   system.
        class Foot
            include BaseUnit
            
            # Type for the Foot unit
            UNIT_TYPE = Measurements::Type::BASE
            
            # System type for the Foot unit
            UNIT_SYSTEM = Measurements::System::IMPERIAL
        end
        
    end
end
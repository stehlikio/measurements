module Measurements
    module Unit
        
        # The implementation of a inch. A inch is a unit that belongs to the imperial unit 
        #   system.
        class Inch
            include BaseUnit
            
            # Type for the Cup unit
            UNIT_TYPE = Measurements::Type::BASE
            
            # System type for the Cup unit
            UNIT_SYSTEM = Measurements::System::IMPERIAL
        end
        
    end
end
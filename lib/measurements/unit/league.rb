module Measurements
    module Unit
        
        # The implementation of a league. A league is a unit that belongs to the imperial unit 
        #   system.
        class League
            include BaseUnit
            
            # Type for the League unit
            UNIT_TYPE = Measurements::Type::BASE
            
            # System type for the League unit
            UNIT_SYSTEM = Measurements::System::IMPERIAL
        end
        
    end
end
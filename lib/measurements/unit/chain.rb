module Measurements
    module Unit
        
        # The implementation of a chain. A chain is a unit that belongs to the imperial unit 
        #   system.
        class Chain
            include BaseUnit
            
            # Type for the Cup unit
            UNIT_TYPE = Measurements::Type::BASE
            
            # System type for the Cup unit
            UNIT_SYSTEM = Measurements::System::IMPERIAL
        end
        
    end
end
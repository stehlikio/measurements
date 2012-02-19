module Measurements
    module Unit
        
        class Cup
            include BaseUnit
            
            # Type for the Cup unit
            UNIT_TYPE = Measurements::Type::NEUTRAL
            
            # System type for the Cup unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end
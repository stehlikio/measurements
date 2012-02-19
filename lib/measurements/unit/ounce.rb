module Measurements
    module Unit
        
        class Ounce
            include BaseUnit
            
            # Type for the Ounce unit
            UNIT_TYPE = Measurements::Type::NEUTRAL
            
            # System type for the Ounce unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end

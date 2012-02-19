module Measurements
    module Unit
        
        class Teaspoon
            include BaseUnit
            
            # Type for the Teaspoon unit
            UNIT_TYPE = Measurements::Type::NEUTRAL
            
            # System type for the Teaspoon unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end
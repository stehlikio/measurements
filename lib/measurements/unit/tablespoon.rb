module Measurements
    module Unit
        
        class Tablespoon       
            include BaseUnit
            
            # Type for the Tablespoon unit
            UNIT_TYPE = Measurements::Type::NEUTRAL
            
            # System type for the Tablespoon unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end
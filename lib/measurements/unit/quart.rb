module Measurements
    module Unit
        
        class Quart
            include BaseUnit
            
            # Type for the Cup unit
            UNIT_TYPE = Measurements::Type::FLUID
            
            # System type for the Cup unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end
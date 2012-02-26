module Measurements
    module Unit
        
        class Pound
            include BaseUnit
                        
            # Type for the Pound unit
            UNIT_TYPE = Measurements::Type::SOLID
            
            # System type for the Pound unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end
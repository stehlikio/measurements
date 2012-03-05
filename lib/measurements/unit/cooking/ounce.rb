module Measurements
    module Unit
        
        # The implementation of a ounce. A ounce is a neutral unit that belongs to the cooking unit 
        #   system.
        class Ounce
            include BaseUnit
            include CookingUnit
            
            # Type for the Ounce unit
            UNIT_TYPE = Measurements::Type::NEUTRAL
            
            # System type for the Ounce unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end

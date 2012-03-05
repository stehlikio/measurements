module Measurements
    module Unit
        
        # The implementation of a quart. A quart is a fluid unit that belongs to the cooking unit 
        #   system.
        class Quart
            include BaseUnit
            include CookingUnit
            
            # Type for the Quart unit
            UNIT_TYPE = Measurements::Type::FLUID
            
            # System type for the Quart unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end
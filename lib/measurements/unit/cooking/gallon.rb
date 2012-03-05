module Measurements
    module Unit
        
        # The implementation of a gallon. A gallon is a fluid unit that belongs to the cooking unit 
        #   system.
        class Gallon
            include BaseUnit
            include CookingUnit
            
            # Type for the Gallon unit
            UNIT_TYPE = Measurements::Type::FLUID
            
            # System type for the Gallon unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end
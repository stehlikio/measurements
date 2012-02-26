module Measurements
    module Unit
        
        # The implementation of a pint. A pint is a fluid unit that belongs to the cooking unit 
        #   system.
        class Pint
            include BaseUnit
            
            # Type for the Cup unit
            UNIT_TYPE = Measurements::Type::FLUID
            
            # System type for the Cup unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end
module Measurements
    module Unit
        
        # The implementation of a pound. A pound is a solid unit that belongs to the cooking unit 
        #   system.
        class Pound
            include BaseUnit
            include Cooking
                        
            # Type for the Pound unit
            UNIT_TYPE = Measurements::Type::SOLID
            
            # System type for the Pound unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end
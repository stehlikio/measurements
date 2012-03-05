module Measurements
    module Unit
        
        # The implementation of a teaspoon. A teaspoon is a neutral unit that belongs to the cooking unit 
        #   system.
        class Teaspoon
            include BaseUnit
            include Cooking
                        
            # Type for the Teaspoon unit
            UNIT_TYPE = Measurements::Type::NEUTRAL
            
            # System type for the Teaspoon unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end
module Measurements
    module Unit
        
        # The implementation of a cup. A cup is a neutral unit that belongs to the cooking unit 
        #   system.
        class Cup
            include BaseUnit
            include Cooking
            
            # Type for the Cup unit
            UNIT_TYPE = Measurements::Type::NEUTRAL
            
            # System type for the Cup unit
            UNIT_SYSTEM = Measurements::System::COOK
        end
        
    end
end
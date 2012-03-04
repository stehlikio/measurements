module Measurements
    module Unit
        
        # The implementation of a thou. A thou is a unit that belongs to the imperial unit 
        #   system.
        class Thou
            include BaseUnit
            
            # Type for the Cup unit
            UNIT_TYPE = Measurements::Type::BASE
            
            # System type for the Cup unit
            UNIT_SYSTEM = Measurements::System::IMPERIAL
        end
        
    end
end
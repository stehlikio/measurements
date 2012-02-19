module Measurements
    module Exception
        
        class NoUnitError < StandardError
        end
        
        class NoConversionError < StandardError
        end
        
        class InvalidConversionError < StandardError
        end
        
    end
end

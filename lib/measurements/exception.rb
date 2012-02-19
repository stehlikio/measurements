module Measurements
    module Exception
        
        # This is an extention of the StandardError and it will be raised when
        #   you try to convert to a unit that doesn't exist. An example would
        #   be Ounce.new(3).convert_to :fake_unit
        class NoUnitError < StandardError
        end
        
        # This is an extention of the StandardError and it will be raised when
        #   you try to convert a unit to a new unit that isn't in the same
        #   system type. Such as converting an ounce to a foot.
        class InvalidConversionError < StandardError
        end
        
    end
end

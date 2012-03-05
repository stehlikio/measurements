module Measurements
    module Unit
        
        module Cooking
            # Convert the current unit into a new unit of highest bestfit unit that
            #   would make sense while measuring something. An example would be that a better way
            #   to display 6 tsps would be 2 tbsps.
            # @param [Float] threshold the amount of a partial unit that is satisfactory to return
            # @return [BaseUnit] the new unit, it will be the unit that is the bestfit conversion.
            def smart_convert(threshold = 0.25, unit = nil)
                prog_list = conversion_progression
                if unit.nil?
                    cur_unit = convert_to_base(self)
    
                    next_unit = nil
                    if prog_list.length > 1
                        next_unit = prog_list.first
                    end
                else
                    cur_unit = convert_to(unit.to_sym)
                    
                    next_unit = nil
                    if prog_list.length > prog_list.index(unit) + 1
                        next_unit = prog_list[prog_list.index(unit) + 1]
                    end
                end
                
                if cur_unit.quantity % threshold == 0.0
                    return cur_unit
                else
                    if next_unit.nil? || next_unit.eql?(self.unit)
                        return self
                    else
                        return smart_convert(threshold, next_unit)
                    end
                end
            end
        end
        
    end
end
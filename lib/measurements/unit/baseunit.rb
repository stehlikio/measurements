module Measurements
    module Unit        
        module BaseUnit
                        
            # @attribute [rw]
            # The quantity of a unit
            attr_accessor :quantity
            
            # @attribute [rw]
            # The type of the editable type of the unit. This is
            #   used to limit the conversions from fluid to solid
            attr_accessor :type
            
            def initialize(quantity, type = nil)
                @quantity = quantity.to_f
                @type = type
            end
            
            # @attribute [r]
            # The type of the unit
            def unit
                self.class.name.split('::').last.downcase.to_s
            end
            
            # @attribute [r]
            # The system of measurement of the unit
            def unit_system
                eval(self.class.to_s + "::UNIT_SYSTEM")
            end
            
            # @attribute [r]
            # The class type of the unit, such as Liquid or Neutral
            def unit_type
                eval(self.class.to_s + "::UNIT_TYPE")
            end
            
            # @attribute [r]
            # The abbreviation of the unit depending on the locale
            def unit_abbr
                unit = self.class.name.split('::').last.downcase.to_s
                Measurements::Unit::ABBREVIATIONS["abbreviations"][Measurements::LOCALE][unit]
            end
            
            # When you look at a unit object the quantity will be displayed.
            #   It seemed like a nicer way to display the unit, kind of like a [Float]
            def inspect
                @quantity
            end
            
            # Convert the current unit into a new unit of the type given
            # @param [Symbol] type the type of unit to convert to
            # @return [BaseUnit] the new unit, it will be a subclass of [BaseUnit].
            # @raise [InvalidConversionError] gets raised if the type of conversion is not valid.
            def convert_to(type)
                type = type.to_s
                current_type = self.unit
                if validate_conversion(current_type, type)
                    base = convert_to_base(self)
                    return convert_to_type(base, type)
                else
                    raise Measurements::Exception::InvalidConversionError, "A conversion must be from the same type or neutral."
                end
            end
            
            # Convert the current unit into a new unit of highest bestfit unit that
            #   would make sense while measuring something. An example would be that a better way
            #   to display 6 tsps would be 2 tbsps.
            # @return [BaseUnit] the new unit, it will be the unit that is the bestfit conversion.
            def smart_convert
                #TODO
            end
            
            private
            
            # Validate if a conversion will be valid. A conversion will be valid if one
            #   of the units types are neutral or if the unit types are the same.
            # @param [String] from the unit type to convert from
            # @param [String] to the unit type to convert to
            # @return [Boolean] True if the conversion is valid.
            # @raise [NoUnitError] gets raised if the from or to units could not be found
            def validate_conversion(from, to)
                begin
                    from = eval("Measurements::Unit::" + from.capitalize + "::UNIT_TYPE")
                    to = eval("Measurements::Unit::" + to.capitalize + "::UNIT_TYPE")
                rescue
                    raise Measurements::Exception::NoUnitError, "The unit you're trying to convert to does not exist."
                end
                from.eql?("neutral") || to.eql?("neutral") || from.eql?(to)
            end
            
            # Convert the current unit into the base unit for its type.
            # @param [BaseUnit] current the unit to be converted, it should be a subclass of [BaseUnit]
            # @return [BaseUnit] the base unit.
            def convert_to_base(current)
                measurement_list = Measurements::Unit::CONVERSIONS["conversions"][current.unit_system][current.unit_type]
                quantity_to_mst = measurement_list[current.unit]
                base_type = measurement_list["base"]
                
                eval("Measurements::Unit::" + base_type.capitalize).new(current.quantity / quantity_to_mst, current.type)
            end
            
            # Take the base unit and convert it to the requested type. If the type requested
            #   is the same type as the base, just return the base unit back.
            # @param [BaseUnit] base the base unit to be converted
            # @param [String] type the type of unit the base should be converted to
            # @return [BaseUnit] the new unit, it will be a subclass of [BaseUnit]
            def convert_to_type(base, type)
                if base.unit.eql? type
                    return base
                else
                    measurement_list = Measurements::Unit::CONVERSIONS["conversions"][base.unit_system][base.unit_type]
                    quantity_to_type = measurement_list[type]
                    
                    eval("Measurements::Unit::" + type.capitalize).new(base.quantity * quantity_to_type, base.type)
                end
            end
        end
    end
end
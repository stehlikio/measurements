module Measurements
    module Unit

        class Unit
            def initialize(klass)
                @klass = klass
            end

            def inspect
                self.quantity
            end

            def humanize
                self.quantity.to_s + self.unit_abbr
            end

            def type=(type)
                @klass.type = type
            end

            def type
                @klass.type
            end

            def quantity
                @klass.quantity
            end

            def quantity=(quantity)
                @klass.quantity = quantity
            end

            def unit
                @klass.unit
            end

            def unit_type
                @klass.unit_type
            end

            def unit_system
                @klass.unit_system
            end

            def unit_abbr
                @klass.unit_abbr
            end

            def convert_to(type)
                @klass = @klass.convert_to(type)
            end
        end

    end
end
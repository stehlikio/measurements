require 'yaml'

module Measurements
    module Unit
        
        # All conversions are loaded from the conversions.yml.
        #   The conversions.yml file lives in the /measurements directory of the project
        CONVERSIONS = YAML::load(File.open(File.join(File.dirname(__FILE__), 'config', 'conversions.yml')))
        
        # All abbreviations are loaded from the abbreviations.yml.
        #   The abbreviations.yml file lives in the /measurements/config directory of the project
        ABBREVIATIONS = YAML::load(File.open(File.join(File.dirname(__FILE__), 'config', 'abbreviations.yml')))
        
        autoload :BaseUnit,   'measurements/unit/baseunit'
        
        # Cooking Units
        autoload :Ounce,      'measurements/unit/ounce'
        autoload :Pound,      'measurements/unit/pound'
        autoload :Teaspoon,   'measurements/unit/teaspoon'
        autoload :Tablespoon, 'measurements/unit/tablespoon'
        autoload :Cup,        'measurements/unit/cup'
        autoload :Pint,       'measurements/unit/pint'
        autoload :Quart,      'measurements/unit/quart'
        autoload :Gallon,     'measurements/unit/gallon'
        
        # Imperial Units
        autoload :Inch,       'measurements/unit/inch'
        autoload :Foot,       'measurements/unit/foot'
        autoload :Yard,       'measurements/unit/yard'
        autoload :Furlong,    'measurements/unit/furlong'
        autoload :Chain,      'measurements/unit/chain'
        autoload :Mile,       'measurements/unit/mile'
        autoload :Thou,       'measurements/unit/thou'
        autoload :League,     'measurements/unit/league'
                
        # Helper method to get what units are currently implemented
        # @deprecated Use {Measurements#available_units} instead of this method because
        #   it's a more obvious method to use instead of diving down to the Unit module.
        # @return [Array] an Array of currently implemented units
        def available_units
            self.constants.reject{|unit| unit.eql?(:BaseUnit) || 
                                         unit.eql?(:CONVERSIONS) || 
                                         unit.eql?(:ABBREVIATIONS)}.map{|unit| unit.to_s.downcase.to_sym}
        end
        
        module_function :available_units
        
    end
end

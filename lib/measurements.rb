# Always make the version available
require 'measurements/version'

# @author Casey Stehlik
module Measurements
    
    # This is the local to use when looking up abbreviations. Later on you will be able 
    #   to select other locales, but for now you get only english
    LOCALE = "en"
    
    autoload :Type,      'measurements/type'
    autoload :System,    'measurements/system'
    autoload :Unit,      'measurements/unit'
    autoload :Exception, 'measurements/exception'
    
    # Helper method to get what units are currently implemented
    # @return [Array] an Array of currently implemented units
    def available_units
        Measurements::Unit.constants.reject{|unit| unit.eql?(:BaseUnit) || unit.eql?(:CONVERSIONS)}.map{|unit| unit.to_s.downcase.to_sym}
    end
    
    # Helper method to get what types are available
    # @return [Array] an Array of types that are available
    def available_types
        Measurements::Type.constants.map{|types| types.downcase.to_sym}
    end
    
    module_function :available_units
    module_function :available_types
end
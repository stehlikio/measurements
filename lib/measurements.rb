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

    # Load in the helper methods to be able to access them
    require 'measurements/helpers'

end
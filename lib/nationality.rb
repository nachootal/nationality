require "nationality/version"
require "yaml"

module Nationality
  
  NATIONALITIES = {}
  (Dir.entries(File.dirname(__FILE__) + '/nationality/yml')).select{|f| f.include? 'nationality'}.each{|f| NATIONALITIES[/^nationality_(\w\w).yml/.match(f)[1].to_sym] = YAML.load_file(File.dirname(__FILE__) + '/nationality/yml/' + f)}

  class Nationality

  	class << self

      def selected_locale
        I18n.locale
      end

      def count
        if NATIONALITIES.keys.include? I18n.locale
          NATIONALITIES[I18n.locale]['nationalities'].length
        else
          raise LocaleNotFound
        end
      end

      def list
        if NATIONALITIES.keys.include? I18n.locale
          NATIONALITIES[I18n.locale]['nationalities'].sort
        else
          NATIONALITIES[:es]['nationalities'].sort
        end
      end
    end

  end

  class LocaleNotFound < StandardError
    def initialize(msg="Locale not supported")
      super
    end
  end
end

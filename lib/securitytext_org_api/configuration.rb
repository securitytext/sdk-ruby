# This file was automatically generated for SecurityTextOrg by APIMATIC v2.0
# ( https://apimatic.io ).

module SecuritytextOrgApi

  Logging.logger.root.appenders = Logging.appenders.stdout
  Logging.logger.root.level = :info

  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    # The base Uri for API calls
    @base_uri = 'https://api.securitytext.org/v1'

    # The attribute accessors for public properties.
    class << self
      attr_accessor :array_serialization
      attr_accessor :base_uri
    end
  end
end

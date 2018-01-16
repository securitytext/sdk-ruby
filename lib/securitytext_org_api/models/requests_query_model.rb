# This file was automatically generated for SecurityTextOrg by APIMATIC v2.0
# ( https://apimatic.io ).

module SecuritytextOrgApi
  # Query request
  class RequestsQueryModel < BaseModel
    # Name of Domain to query
    # @return [String]
    attr_accessor :domain

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['domain'] = 'domain'
      @_hash
    end

    def initialize(domain = nil,
                   additional_properties = {})
      @domain = domain

      # Add additional model properties to the instance.
      additional_properties.each do |_name, value|
        instance_variable_set("@#{_name}", value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      domain = hash['domain']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      RequestsQueryModel.new(domain,
                             hash)
    end
  end
end

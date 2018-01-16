# This file was automatically generated for SecurityTextOrg by APIMATIC v2.0
# ( https://apimatic.io ).

module SecuritytextOrgApi
  # UUID attributes
  class AttributesUuidModel < BaseModel
    # Value of UUID
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['value'] = 'value'
      @_hash
    end

    def initialize(value = nil,
                   additional_properties = {})
      @value = value

      # Add additional model properties to the instance.
      additional_properties.each do |_name, value|
        instance_variable_set("@#{_name}", value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      value = hash['value']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      AttributesUuidModel.new(value,
                              hash)
    end
  end
end

# This file was automatically generated for SecurityTextOrg by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module SecuritytextOrgApi
  # Timestamp attributes
  class AttributesTimestampsModel < BaseModel
    # Creation date
    # @return [DateTime]
    attr_accessor :created_at

    # Last updated
    # @return [DateTime]
    attr_accessor :updated_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash
    end

    def initialize(created_at = nil,
                   updated_at = nil,
                   additional_properties = {})
      @created_at = created_at
      @updated_at = updated_at

      # Add additional model properties to the instance.
      additional_properties.each do |_name, value|
        instance_variable_set("@#{_name}", value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      created_at = DateTime.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = DateTime.rfc3339(hash['updated_at']) if hash['updated_at']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      AttributesTimestampsModel.new(created_at,
                                    updated_at,
                                    hash)
    end
  end
end

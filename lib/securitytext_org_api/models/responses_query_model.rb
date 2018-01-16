# This file was automatically generated for SecurityTextOrg by APIMATIC v2.0
# ( https://apimatic.io ).

module SecuritytextOrgApi
  # Query response
  class ResponsesQueryModel < BaseModel
    # Query matched exactly one Domain object
    # @return [Boolean]
    attr_accessor :found

    # Status of matched Domain object (if any)
    # @return [Integer]
    attr_accessor :status

    # Text output of Query
    # @return [String]
    attr_accessor :output

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['found'] = 'found'
      @_hash['status'] = 'status'
      @_hash['output'] = 'output'
      @_hash
    end

    def initialize(found = nil,
                   status = nil,
                   output = nil,
                   additional_properties = {})
      @found = found
      @status = status
      @output = output

      # Add additional model properties to the instance.
      additional_properties.each do |_name, value|
        instance_variable_set("@#{_name}", value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      found = hash['found']
      status = hash['status']
      output = hash['output']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ResponsesQueryModel.new(found,
                              status,
                              output,
                              hash)
    end
  end
end

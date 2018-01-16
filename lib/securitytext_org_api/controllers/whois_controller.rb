# This file was automatically generated for SecurityTextOrg by APIMATIC v2.0
# ( https://apimatic.io ).

module SecuritytextOrgApi
  # WhoisController
  class WhoisController < BaseController
    @instance = WhoisController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Query the server for a Domain object
    # @param [RequestsQueryModel] body Required parameter: Body of API request
    # @return ResponsesQueryModel response from the API call
    def create_api_whois_query(body)
      begin
        @logger.info("create_api_whois_query called.")
        # Validate required parameters.
        @logger.info("Validating required parameters for create_api_whois_query.")
        validate_parameters(
          'body' => body
        )
        # Prepare query url.
        @logger.info("Preparing query URL for create_api_whois_query.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/query'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for create_api_whois_query.")
        _headers = {
          'accept' => 'application/json',
          'content-type' => 'application/json; charset=utf-8'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_api_whois_query.')
        _request = @http_client.post(
          _query_url,
          headers: _headers,
          parameters: body.to_json
        )
        _context = execute_request(_request, name: 'create_api_whois_query')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_api_whois_query.")
        return nil if _context.response.status_code == 404
          @logger.info("Status code 404 received for create_api_whois_query. Returning nil.")
        if _context.response.status_code == 400
          raise ResponsesErrorException.new(
            'Bad Request',
            _context
          )
        elsif _context.response.status_code == 406
          raise ResponsesErrorException.new(
            'Not Acceptable',
            _context
          )
        elsif _context.response.status_code == 500
          raise ResponsesErrorException.new(
            'Internal Server Error',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for create_api_whois_query.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        ResponsesQueryModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end

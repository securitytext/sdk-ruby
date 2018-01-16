# This file was automatically generated for SecurityTextOrg by APIMATIC v2.0
# ( https://apimatic.io ).

module SecuritytextOrgApi
  #  securitytext_org_api client class.
  class SecuritytextOrgApiClient
    # Singleton access to whois controller.
    # @return [WhoisController] Returns the controller instance.
    def whois
      WhoisController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end
  end
end

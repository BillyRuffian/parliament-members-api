=begin
#Members API

#An API which retrieves Members data.

The version of the OpenAPI document: v1
Contact: softwareengineering@parliament.uk
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module ParliamentMembers
  class PartiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of current parties with at least one active member.
    # @param house [House] Current parties by house
    # @param [Hash] opts the optional parameters
    # @return [PartyMembersServiceSearchResult]
    def api_parties_get_active_house_get(house, opts = {})
      data, _status_code, _headers = api_parties_get_active_house_get_with_http_info(house, opts)
      data
    end

    # Returns a list of current parties with at least one active member.
    # @param house [House] Current parties by house
    # @param [Hash] opts the optional parameters
    # @return [Array<(PartyMembersServiceSearchResult, Integer, Hash)>] PartyMembersServiceSearchResult data, response status code and response headers
    def api_parties_get_active_house_get_with_http_info(house, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PartiesApi.api_parties_get_active_house_get ...'
      end
      # verify the required parameter 'house' is set
      if @api_client.config.client_side_validation && house.nil?
        fail ArgumentError, "Missing the required parameter 'house' when calling PartiesApi.api_parties_get_active_house_get"
      end
      # resource path
      local_var_path = '/api/Parties/GetActive/{house}'.sub('{' + 'house' + '}', CGI.escape(house.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PartyMembersServiceSearchResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PartiesApi.api_parties_get_active_house_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PartiesApi#api_parties_get_active_house_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the composition of the House of Lords by peerage type.
    # @param for_date [Time] Composition of the Lords for date specified.
    # @param [Hash] opts the optional parameters
    # @return [LordsByTypeMembersServiceSearchResult]
    def api_parties_lords_by_type_for_date_get(for_date, opts = {})
      data, _status_code, _headers = api_parties_lords_by_type_for_date_get_with_http_info(for_date, opts)
      data
    end

    # Returns the composition of the House of Lords by peerage type.
    # @param for_date [Time] Composition of the Lords for date specified.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LordsByTypeMembersServiceSearchResult, Integer, Hash)>] LordsByTypeMembersServiceSearchResult data, response status code and response headers
    def api_parties_lords_by_type_for_date_get_with_http_info(for_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PartiesApi.api_parties_lords_by_type_for_date_get ...'
      end
      # verify the required parameter 'for_date' is set
      if @api_client.config.client_side_validation && for_date.nil?
        fail ArgumentError, "Missing the required parameter 'for_date' when calling PartiesApi.api_parties_lords_by_type_for_date_get"
      end
      # resource path
      local_var_path = '/api/Parties/LordsByType/{forDate}'.sub('{' + 'forDate' + '}', CGI.escape(for_date.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LordsByTypeMembersServiceSearchResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PartiesApi.api_parties_lords_by_type_for_date_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PartiesApi#api_parties_lords_by_type_for_date_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns current state of parties
    # @param house [House] State of parties in Commons or Lords.
    # @param for_date [Time] State of parties for the date specified
    # @param [Hash] opts the optional parameters
    # @return [PartySeatCountMembersServiceSearchResult]
    def api_parties_state_of_the_parties_house_for_date_get(house, for_date, opts = {})
      data, _status_code, _headers = api_parties_state_of_the_parties_house_for_date_get_with_http_info(house, for_date, opts)
      data
    end

    # Returns current state of parties
    # @param house [House] State of parties in Commons or Lords.
    # @param for_date [Time] State of parties for the date specified
    # @param [Hash] opts the optional parameters
    # @return [Array<(PartySeatCountMembersServiceSearchResult, Integer, Hash)>] PartySeatCountMembersServiceSearchResult data, response status code and response headers
    def api_parties_state_of_the_parties_house_for_date_get_with_http_info(house, for_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PartiesApi.api_parties_state_of_the_parties_house_for_date_get ...'
      end
      # verify the required parameter 'house' is set
      if @api_client.config.client_side_validation && house.nil?
        fail ArgumentError, "Missing the required parameter 'house' when calling PartiesApi.api_parties_state_of_the_parties_house_for_date_get"
      end
      # verify the required parameter 'for_date' is set
      if @api_client.config.client_side_validation && for_date.nil?
        fail ArgumentError, "Missing the required parameter 'for_date' when calling PartiesApi.api_parties_state_of_the_parties_house_for_date_get"
      end
      # resource path
      local_var_path = '/api/Parties/StateOfTheParties/{house}/{forDate}'.sub('{' + 'house' + '}', CGI.escape(house.to_s)).sub('{' + 'forDate' + '}', CGI.escape(for_date.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PartySeatCountMembersServiceSearchResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PartiesApi.api_parties_state_of_the_parties_house_for_date_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PartiesApi#api_parties_state_of_the_parties_house_for_date_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

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
  class LocationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of locations, both parent and child
    # @param location_type [LocationType] Location by type of location
    # @param location_name [String] Location by name specified
    # @param [Hash] opts the optional parameters
    # @return [LocationItem]
    def api_location_browse_location_type_location_name_get(location_type, location_name, opts = {})
      data, _status_code, _headers = api_location_browse_location_type_location_name_get_with_http_info(location_type, location_name, opts)
      data
    end

    # Returns a list of locations, both parent and child
    # @param location_type [LocationType] Location by type of location
    # @param location_name [String] Location by name specified
    # @param [Hash] opts the optional parameters
    # @return [Array<(LocationItem, Integer, Hash)>] LocationItem data, response status code and response headers
    def api_location_browse_location_type_location_name_get_with_http_info(location_type, location_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationApi.api_location_browse_location_type_location_name_get ...'
      end
      # verify the required parameter 'location_type' is set
      if @api_client.config.client_side_validation && location_type.nil?
        fail ArgumentError, "Missing the required parameter 'location_type' when calling LocationApi.api_location_browse_location_type_location_name_get"
      end
      # verify the required parameter 'location_name' is set
      if @api_client.config.client_side_validation && location_name.nil?
        fail ArgumentError, "Missing the required parameter 'location_name' when calling LocationApi.api_location_browse_location_type_location_name_get"
      end
      # resource path
      local_var_path = '/api/Location/Browse/{locationType}/{locationName}'.sub('{' + 'locationType' + '}', CGI.escape(location_type.to_s)).sub('{' + 'locationName' + '}', CGI.escape(location_name.to_s))

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
      return_type = opts[:debug_return_type] || 'LocationItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"LocationApi.api_location_browse_location_type_location_name_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#api_location_browse_location_type_location_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns an election result by constituency and election id
    # @param id [Integer] Election result by constituency id
    # @param election_id [Integer] Election result by election id
    # @param [Hash] opts the optional parameters
    # @return [ElectionResultItem]
    def api_location_constituency_id_election_result_election_id_get(id, election_id, opts = {})
      data, _status_code, _headers = api_location_constituency_id_election_result_election_id_get_with_http_info(id, election_id, opts)
      data
    end

    # Returns an election result by constituency and election id
    # @param id [Integer] Election result by constituency id
    # @param election_id [Integer] Election result by election id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ElectionResultItem, Integer, Hash)>] ElectionResultItem data, response status code and response headers
    def api_location_constituency_id_election_result_election_id_get_with_http_info(id, election_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationApi.api_location_constituency_id_election_result_election_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocationApi.api_location_constituency_id_election_result_election_id_get"
      end
      # verify the required parameter 'election_id' is set
      if @api_client.config.client_side_validation && election_id.nil?
        fail ArgumentError, "Missing the required parameter 'election_id' when calling LocationApi.api_location_constituency_id_election_result_election_id_get"
      end
      # resource path
      local_var_path = '/api/Location/Constituency/{id}/ElectionResult/{electionId}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'electionId' + '}', CGI.escape(election_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ElectionResultItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"LocationApi.api_location_constituency_id_election_result_election_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#api_location_constituency_id_election_result_election_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns latest election result by constituency id
    # @param id [Integer] Latest election result by constituency id
    # @param [Hash] opts the optional parameters
    # @return [ElectionResultItem]
    def api_location_constituency_id_election_result_latest_get(id, opts = {})
      data, _status_code, _headers = api_location_constituency_id_election_result_latest_get_with_http_info(id, opts)
      data
    end

    # Returns latest election result by constituency id
    # @param id [Integer] Latest election result by constituency id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ElectionResultItem, Integer, Hash)>] ElectionResultItem data, response status code and response headers
    def api_location_constituency_id_election_result_latest_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationApi.api_location_constituency_id_election_result_latest_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocationApi.api_location_constituency_id_election_result_latest_get"
      end
      # resource path
      local_var_path = '/api/Location/Constituency/{id}/ElectionResult/Latest'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'ElectionResultItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"LocationApi.api_location_constituency_id_election_result_latest_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#api_location_constituency_id_election_result_latest_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of election results by constituency ID
    # @param id [Integer] Elections results by constituency ID
    # @param [Hash] opts the optional parameters
    # @return [ElectionResultListItem]
    def api_location_constituency_id_election_results_get(id, opts = {})
      data, _status_code, _headers = api_location_constituency_id_election_results_get_with_http_info(id, opts)
      data
    end

    # Returns a list of election results by constituency ID
    # @param id [Integer] Elections results by constituency ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ElectionResultListItem, Integer, Hash)>] ElectionResultListItem data, response status code and response headers
    def api_location_constituency_id_election_results_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationApi.api_location_constituency_id_election_results_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocationApi.api_location_constituency_id_election_results_get"
      end
      # resource path
      local_var_path = '/api/Location/Constituency/{id}/ElectionResults'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'ElectionResultListItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"LocationApi.api_location_constituency_id_election_results_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#api_location_constituency_id_election_results_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns geometry by constituency ID
    # @param id [Integer] Geometry by constituency ID
    # @param [Hash] opts the optional parameters
    # @return [StringItem]
    def api_location_constituency_id_geometry_get(id, opts = {})
      data, _status_code, _headers = api_location_constituency_id_geometry_get_with_http_info(id, opts)
      data
    end

    # Returns geometry by constituency ID
    # @param id [Integer] Geometry by constituency ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringItem, Integer, Hash)>] StringItem data, response status code and response headers
    def api_location_constituency_id_geometry_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationApi.api_location_constituency_id_geometry_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocationApi.api_location_constituency_id_geometry_get"
      end
      # resource path
      local_var_path = '/api/Location/Constituency/{id}/Geometry'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'StringItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"LocationApi.api_location_constituency_id_geometry_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#api_location_constituency_id_geometry_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a constituency by ID
    # @param id [Integer] Constituency by ID
    # @param [Hash] opts the optional parameters
    # @return [ConstituencyItem]
    def api_location_constituency_id_get(id, opts = {})
      data, _status_code, _headers = api_location_constituency_id_get_with_http_info(id, opts)
      data
    end

    # Returns a constituency by ID
    # @param id [Integer] Constituency by ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConstituencyItem, Integer, Hash)>] ConstituencyItem data, response status code and response headers
    def api_location_constituency_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationApi.api_location_constituency_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocationApi.api_location_constituency_id_get"
      end
      # resource path
      local_var_path = '/api/Location/Constituency/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'ConstituencyItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"LocationApi.api_location_constituency_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#api_location_constituency_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of representations by constituency ID
    # @param id [Integer] Representations by constituency ID
    # @param [Hash] opts the optional parameters
    # @return [ConstituencyRepresentationListItem]
    def api_location_constituency_id_representations_get(id, opts = {})
      data, _status_code, _headers = api_location_constituency_id_representations_get_with_http_info(id, opts)
      data
    end

    # Returns a list of representations by constituency ID
    # @param id [Integer] Representations by constituency ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConstituencyRepresentationListItem, Integer, Hash)>] ConstituencyRepresentationListItem data, response status code and response headers
    def api_location_constituency_id_representations_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationApi.api_location_constituency_id_representations_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocationApi.api_location_constituency_id_representations_get"
      end
      # resource path
      local_var_path = '/api/Location/Constituency/{id}/Representations'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'ConstituencyRepresentationListItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"LocationApi.api_location_constituency_id_representations_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#api_location_constituency_id_representations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a synopsis by constituency ID
    # @param id [Integer] Synopsis by constituency ID
    # @param [Hash] opts the optional parameters
    # @return [StringItem]
    def api_location_constituency_id_synopsis_get(id, opts = {})
      data, _status_code, _headers = api_location_constituency_id_synopsis_get_with_http_info(id, opts)
      data
    end

    # Returns a synopsis by constituency ID
    # @param id [Integer] Synopsis by constituency ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringItem, Integer, Hash)>] StringItem data, response status code and response headers
    def api_location_constituency_id_synopsis_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationApi.api_location_constituency_id_synopsis_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocationApi.api_location_constituency_id_synopsis_get"
      end
      # resource path
      local_var_path = '/api/Location/Constituency/{id}/Synopsis'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'StringItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"LocationApi.api_location_constituency_id_synopsis_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#api_location_constituency_id_synopsis_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of constituencies
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search_text Constituencies containing serach term in their name
    # @option opts [Integer] :skip The number of records to skip from the first, default is 0 (default to 0)
    # @option opts [Integer] :take The number of records to return, default is 20. Maximum is 20 (default to 20)
    # @return [ConstituencyMembersServiceSearchResult]
    def api_location_constituency_search_get(opts = {})
      data, _status_code, _headers = api_location_constituency_search_get_with_http_info(opts)
      data
    end

    # Returns a list of constituencies
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search_text Constituencies containing serach term in their name
    # @option opts [Integer] :skip The number of records to skip from the first, default is 0 (default to 0)
    # @option opts [Integer] :take The number of records to return, default is 20. Maximum is 20 (default to 20)
    # @return [Array<(ConstituencyMembersServiceSearchResult, Integer, Hash)>] ConstituencyMembersServiceSearchResult data, response status code and response headers
    def api_location_constituency_search_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationApi.api_location_constituency_search_get ...'
      end
      # resource path
      local_var_path = '/api/Location/Constituency/Search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'searchText'] = opts[:'search_text'] if !opts[:'search_text'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'take'] = opts[:'take'] if !opts[:'take'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConstituencyMembersServiceSearchResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"LocationApi.api_location_constituency_search_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#api_location_constituency_search_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
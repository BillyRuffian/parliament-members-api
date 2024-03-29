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
  class ReferenceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of answering bodies.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id 
    # @option opts [String] :name_contains 
    # @return [Array<AnsweringBody>]
    def api_reference_answering_bodies_get(opts = {})
      data, _status_code, _headers = api_reference_answering_bodies_get_with_http_info(opts)
      data
    end

    # Returns a list of answering bodies.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id 
    # @option opts [String] :name_contains 
    # @return [Array<(Array<AnsweringBody>, Integer, Hash)>] Array<AnsweringBody> data, response status code and response headers
    def api_reference_answering_bodies_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceApi.api_reference_answering_bodies_get ...'
      end
      # resource path
      local_var_path = '/api/Reference/AnsweringBodies'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'nameContains'] = opts[:'name_contains'] if !opts[:'name_contains'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AnsweringBody>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ReferenceApi.api_reference_answering_bodies_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceApi#api_reference_answering_bodies_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of departments.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id 
    # @option opts [String] :name_contains 
    # @return [Array<GovernmentDepartment>]
    def api_reference_departments_get(opts = {})
      data, _status_code, _headers = api_reference_departments_get_with_http_info(opts)
      data
    end

    # Returns a list of departments.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id 
    # @option opts [String] :name_contains 
    # @return [Array<(Array<GovernmentDepartment>, Integer, Hash)>] Array<GovernmentDepartment> data, response status code and response headers
    def api_reference_departments_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceApi.api_reference_departments_get ...'
      end
      # resource path
      local_var_path = '/api/Reference/Departments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'nameContains'] = opts[:'name_contains'] if !opts[:'name_contains'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GovernmentDepartment>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ReferenceApi.api_reference_departments_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceApi#api_reference_departments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns department logo.
    # @param id [Integer] Logo by department ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def api_reference_departments_id_logo_get(id, opts = {})
      api_reference_departments_id_logo_get_with_http_info(id, opts)
      nil
    end

    # Returns department logo.
    # @param id [Integer] Logo by department ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def api_reference_departments_id_logo_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceApi.api_reference_departments_id_logo_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReferenceApi.api_reference_departments_id_logo_get"
      end
      # resource path
      local_var_path = '/api/Reference/Departments/{id}/Logo'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ReferenceApi.api_reference_departments_id_logo_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceApi#api_reference_departments_id_logo_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of policy interest.
    # @param [Hash] opts the optional parameters
    # @return [Array<GenericReferenceData>]
    def api_reference_policy_interests_get(opts = {})
      data, _status_code, _headers = api_reference_policy_interests_get_with_http_info(opts)
      data
    end

    # Returns a list of policy interest.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GenericReferenceData>, Integer, Hash)>] Array<GenericReferenceData> data, response status code and response headers
    def api_reference_policy_interests_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceApi.api_reference_policy_interests_get ...'
      end
      # resource path
      local_var_path = '/api/Reference/PolicyInterests'

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
      return_type = opts[:debug_return_type] || 'Array<GenericReferenceData>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ReferenceApi.api_reference_policy_interests_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceApi#api_reference_policy_interests_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

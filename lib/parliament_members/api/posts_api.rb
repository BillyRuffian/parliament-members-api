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
  class PostsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of departments.
    # @param type [PostType] Departments by type
    # @param [Hash] opts the optional parameters
    # @return [Array<GovernmentDepartment>]
    def api_posts_departments_type_get(type, opts = {})
      data, _status_code, _headers = api_posts_departments_type_get_with_http_info(type, opts)
      data
    end

    # Returns a list of departments.
    # @param type [PostType] Departments by type
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GovernmentDepartment>, Integer, Hash)>] Array<GovernmentDepartment> data, response status code and response headers
    def api_posts_departments_type_get_with_http_info(type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PostsApi.api_posts_departments_type_get ...'
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling PostsApi.api_posts_departments_type_get"
      end
      # resource path
      local_var_path = '/api/Posts/Departments/{type}'.sub('{' + 'type' + '}', CGI.escape(type.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<GovernmentDepartment>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PostsApi.api_posts_departments_type_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PostsApi#api_posts_departments_type_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of government posts.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :department_id Government posts by department ID
    # @return [Array<GovernmentOppositionPostItem>]
    def api_posts_government_posts_get(opts = {})
      data, _status_code, _headers = api_posts_government_posts_get_with_http_info(opts)
      data
    end

    # Returns a list of government posts.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :department_id Government posts by department ID
    # @return [Array<(Array<GovernmentOppositionPostItem>, Integer, Hash)>] Array<GovernmentOppositionPostItem> data, response status code and response headers
    def api_posts_government_posts_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PostsApi.api_posts_government_posts_get ...'
      end
      # resource path
      local_var_path = '/api/Posts/GovernmentPosts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'departmentId'] = opts[:'department_id'] if !opts[:'department_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GovernmentOppositionPostItem>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PostsApi.api_posts_government_posts_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PostsApi#api_posts_government_posts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of opposition posts.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :department_id Opposition posts by department ID
    # @return [Array<GovernmentOppositionPostItem>]
    def api_posts_opposition_posts_get(opts = {})
      data, _status_code, _headers = api_posts_opposition_posts_get_with_http_info(opts)
      data
    end

    # Returns a list of opposition posts.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :department_id Opposition posts by department ID
    # @return [Array<(Array<GovernmentOppositionPostItem>, Integer, Hash)>] Array<GovernmentOppositionPostItem> data, response status code and response headers
    def api_posts_opposition_posts_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PostsApi.api_posts_opposition_posts_get ...'
      end
      # resource path
      local_var_path = '/api/Posts/OppositionPosts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'departmentId'] = opts[:'department_id'] if !opts[:'department_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GovernmentOppositionPostItem>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PostsApi.api_posts_opposition_posts_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PostsApi#api_posts_opposition_posts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list containing the speaker and deputy speakers.
    # @param for_date [Time] Speaker and deputy speakers for date specified
    # @param [Hash] opts the optional parameters
    # @return [Array<MemberItem>]
    def api_posts_speaker_and_deputies_for_date_get(for_date, opts = {})
      data, _status_code, _headers = api_posts_speaker_and_deputies_for_date_get_with_http_info(for_date, opts)
      data
    end

    # Returns a list containing the speaker and deputy speakers.
    # @param for_date [Time] Speaker and deputy speakers for date specified
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<MemberItem>, Integer, Hash)>] Array<MemberItem> data, response status code and response headers
    def api_posts_speaker_and_deputies_for_date_get_with_http_info(for_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PostsApi.api_posts_speaker_and_deputies_for_date_get ...'
      end
      # verify the required parameter 'for_date' is set
      if @api_client.config.client_side_validation && for_date.nil?
        fail ArgumentError, "Missing the required parameter 'for_date' when calling PostsApi.api_posts_speaker_and_deputies_for_date_get"
      end
      # resource path
      local_var_path = '/api/Posts/SpeakerAndDeputies/{forDate}'.sub('{' + 'forDate' + '}', CGI.escape(for_date.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<MemberItem>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PostsApi.api_posts_speaker_and_deputies_for_date_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PostsApi#api_posts_speaker_and_deputies_for_date_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of spokespersons.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :party_id Spokespersons by party ID
    # @return [Array<GovernmentOppositionPostItem>]
    def api_posts_spokespersons_get(opts = {})
      data, _status_code, _headers = api_posts_spokespersons_get_with_http_info(opts)
      data
    end

    # Returns a list of spokespersons.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :party_id Spokespersons by party ID
    # @return [Array<(Array<GovernmentOppositionPostItem>, Integer, Hash)>] Array<GovernmentOppositionPostItem> data, response status code and response headers
    def api_posts_spokespersons_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PostsApi.api_posts_spokespersons_get ...'
      end
      # resource path
      local_var_path = '/api/Posts/Spokespersons'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'partyId'] = opts[:'party_id'] if !opts[:'party_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GovernmentOppositionPostItem>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PostsApi.api_posts_spokespersons_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PostsApi#api_posts_spokespersons_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

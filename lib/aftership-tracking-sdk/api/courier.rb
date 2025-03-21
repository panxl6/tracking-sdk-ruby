# This code was auto generated by AfterShip SDK Generator.
# Do not edit the class manually.
require 'cgi'

module AftershipAPI
  class CourierApi 
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # detect_courier
    # Return a list of matched couriers based on tracking number format and  or a list of couriers.

    # @param body [Model::TrackingDetectCourierRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Model::DetectCourierResponse] 
    def detect_courier(body:, opts: {})
      if "tracking" != ""
        body = { :'tracking' => body }
      end
      opts[:body] = body
      data, _status_code, _headers = detect_courier_with_http_info(opts: opts)
      data
    end

    def detect_courier_with_http_info(opts: {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CourierApi.detect_courier ...'
      end



      # resource path
      local_var_path = "/tracking/2024-04/couriers/detect" 
      method = :'POST'

      # query parameters
      query_params = opts[:query_params] || {}
      # header parameters
      header_params = opts[:header_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = 'DetectCourierResponse'
      
      new_options = opts.merge(
        :operation => :"CourierApi.detect_courier",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type,
        :response_legacy_tag => "",
        :is_paging => false
      )

      data, status_code, headers = @api_client.call_api(method, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CourierApi#detect_courier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end 

    # get_all_couriers
    # Return a list of all couriers.
    # @param [Hash] opts the optional parameters
    # @return [Model::GetAllCouriersResponse] 
    def get_all_couriers(opts: {})
      data, _status_code, _headers = get_all_couriers_with_http_info(opts: opts)
      data
    end

    def get_all_couriers_with_http_info(opts: {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CourierApi.get_all_couriers ...'
      end



      # resource path
      local_var_path = "/tracking/2024-04/couriers/all" 
      method = :'GET'

      # query parameters
      query_params = opts[:query_params] || {}
      # header parameters
      header_params = opts[:header_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = 'GetAllCouriersResponse'
      
      new_options = opts.merge(
        :operation => :"CourierApi.get_all_couriers",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type,
        :response_legacy_tag => "",
        :is_paging => false
      )

      data, status_code, headers = @api_client.call_api(method, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CourierApi#get_all_couriers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end 

    # get_user_couriers
    # Return a list of .
    # @param [Hash] opts the optional parameters
    # @return [Model::GetUserCouriersResponse] 
    def get_user_couriers(opts: {})
      data, _status_code, _headers = get_user_couriers_with_http_info(opts: opts)
      data
    end

    def get_user_couriers_with_http_info(opts: {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CourierApi.get_user_couriers ...'
      end



      # resource path
      local_var_path = "/tracking/2024-04/couriers" 
      method = :'GET'

      # query parameters
      query_params = opts[:query_params] || {}
      # header parameters
      header_params = opts[:header_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = 'GetUserCouriersResponse'
      
      new_options = opts.merge(
        :operation => :"CourierApi.get_user_couriers",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type,
        :response_legacy_tag => "",
        :is_paging => false
      )

      data, status_code, headers = @api_client.call_api(method, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CourierApi#get_user_couriers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end 
  end
end

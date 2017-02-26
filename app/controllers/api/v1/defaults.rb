module API  
  module V1
    module Defaults
      extend ActiveSupport::Concern

      included do
        prefix "api"
        version "v1", using: :path
        default_format :json
        format :json

        helpers do
          def permitted_params
            @permitted_params ||= declared(params, 
               include_missing: false)
          end
          
          def response(data)
            {
              status: 200,
              error_message: nil,
              data: data
            }
          end

          def response_error(error_message)
            {
              status: 400,
              error_message: error_message,
              data: nil
            }
          end
        end
      end
    end
  end
end  

module MyErrorFormatter
  def self.call message, backtrace, options, env
    {
      code: 400,
      error_message: message,
      data: nil
    }.to_json
  end
end
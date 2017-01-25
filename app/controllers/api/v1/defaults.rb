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
          # Helper Method
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
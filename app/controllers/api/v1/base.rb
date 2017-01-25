module API  
  module V1
    class Base < Grape::API
      mount API::V1::Homes
      mount API::V1::Payments
      mount API::V1::Tracking
      mount API::V1::Provinces
    end
  end
end  
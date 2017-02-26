module API  
  module V1
    class Homes < Grape::API
      include API::V1::Defaults

      resource :homes do
        # params do
        #   requires :name, type: String
        # end
        # post "/" do
        #   name = permitted_params[:name]
        #   home = Home.new(name: name)
        #   if home.save
        #     return response(home)
        #   else
        #     return response_error(home.errors.full_message)
        #   end
        # end
      end
    end
  end
end  
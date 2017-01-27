Rails.application.routes.draw do
  mount API::Base, at: "/"  
  get "/" => "homepages#index"
end

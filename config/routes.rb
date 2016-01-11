require_relative '../lib/api_constraints'

Rails.application.routes.draw do
  # API definition
  namespace :api, defaults: { format: :json },
                              constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1, 
    						  constraints: ApiConstraints.new(version: 1, default: true) do
      # We are going to lis tour resources here
    end
  end
end

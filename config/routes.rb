Rails.application.routes.draw do
  # API definition
  namespace :api, defaults: { format: :json },
                            constraints: { subdomain: 'api' }, path: '/' do
    # We are going to lis tour resources here
  end
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/auth/signin' => 'auth#signin'
  post '/auth/signup' => 'auth#signup'
namespace :api, :defaults => { :format => :json } do
  namespace :v1 do
    get '/users/me' => 'users#me'
    resources :users, :stories
  end
end

end

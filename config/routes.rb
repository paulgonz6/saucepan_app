Rails.application.routes.draw do

# STATIC ROUTES==============================================
  root "static_pages#home"
  get '/landing_page' => "static_pages#home", :as => "landing_page"

# USER ROUTES==============================================
  get "/auth/twitter", :as => "signin"
  get '/auth/:provider/callback', to: 'sessions#create'
  get "/signout" => "sessions#destroy", :as => :signout
  get '/:screen_name' => "users#show"

# RESPONSES ROUTES==============================================

# PROMPTS ROUTES==============================================
  resources :prompts do
    resources :responses
  end

  get '/prompt_confirmation/:id' => 'prompts#prompt_confirmation', :as => "prompt_confirmation"

end

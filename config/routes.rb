Rails.application.routes.draw do
  resources :interventions do 
    collection do
      get :get_buildings
      get :get_batteries
      get :get_columns
      get :get_elevators
    end
  end
  devise_for :users
  devise_for :employees, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pages
  resources :quote
  resources :leads
  # root to: 'geolocalisation#index'
  root 'leads#new'
  get 'index' => 'leads#new' # index
  get 'corporate' => 'pages#corporate' # corporate
  get 'residential' => 'pages#residential' # residential
  get 'quoteform' => 'quote#new' # quote form
  get 'ambience' => 'pages#ambience'
  get 'test' =>    'pages#test'
  get 'login' => 'pages#login'
  get 'page-register-1.html' => 'users#new.html.erb'
  get 'sign_in' => 'users#sign_in'
  get 'leads' => 'leads#new'
  get 'intervention' => 'interventions/new'
  get 'welcome' => 'watson#welcome'
  get 'geolocalisation/index'
  get 'dropbox/auth' => 'dropbox#auth'
  get 'dropbox/auth_callback' => 'dropbox#auth_callback'
  # namespace :admin do
  #   resources :addresses do
  #     resources :customers do
  #       resources :buildings do
  #         resources :building_details
  #       end
  #     end
  #   end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end















#Rails.application.routes.draw do
  
  #resources :interventions
  #devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  #devise_for :employees, path: 'employees', controllers: { sessions: "admins/sessions"} 
  # ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)
  #resources :pages
  #resources :quote
  #resources :leads


  
  #root 'leads#new'

  #get 'index' => 'leads#new' # index
  #get 'corporate' => 'pages#corporate' # corporate
  #get 'residential' => 'pages#residential' # residential
  #get 'quoteform' => 'quote#new' # quote form
  #get 'welcome' => 'watson#welcome'
  #get "interventions" => "interventions#new"
 # get 'login' => 'pages#login'
  #ActiveAdmin.routes(self) 
  


  #get "interventions" => "interventions#new"
  #resources :interventions do 
  #  get :get_building_id, on: :collection
  #  get :get_battery_id, on: :collection
 #   get :get_column_id, on: :collection
  #  get :get_elevator_id, on: :collection
  #end

  # namespace :admin do
  #   resources :addresses do
  #     resources :customers do
  #       resources :buildings do
  #         resources :building_details
  #       end
  #     end
  #   end
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#end

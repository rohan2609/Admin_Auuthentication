require 'api_constraints'
Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1) do
      resources :admin_users
    end
  end

  namespace :api, defaults: {format: 'json'} do
  scope module: :v2, constraints: ApiConstraints.new(version: 2, default: :true) do      resources :admin_users
    end
    end

    namespace :api, defaults: { format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1) do
      resources :resumes
    end
  end

  namespace :api, defaults: {format: 'json'} do
  scope module: :v2, constraints: ApiConstraints.new(version: 2, default: :true) do      resources :admin_users
    end
    end

  resources :admin_users
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :statuses
  resources :photos, only: [:new, :create, :index, :destroy]
  resources :general_settings
  resources :resumes, only: [:index, :new, :create, :destroy]
   root "home#index"
  resources :home do
  	collection do
  		get :dashboard
  		end
  	end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

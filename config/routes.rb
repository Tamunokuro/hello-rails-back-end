# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]

  namespace :api do
    namespace :v1 do
      resources :greetings
    end
  end
end


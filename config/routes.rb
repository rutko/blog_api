# frozen_string_literal: true

Rails.application.routes.draw do
  get 'request/connection'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :posts
    end
  end
  get 'request' => 'request#connection'
end

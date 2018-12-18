# frozen_string_literal: true

Rails.application.routes.draw do
  root 'base#index'
  devise_for :users, controllers: { sessions: 'users/sessions' }


  get 'search', to: 'base#search_results'
  post 'search', to: 'base#search'

  scope module: 'v1', path: 'v1' do
    resources :users
    resources :events
  end

  scope :admin do
    get 'csv-export', to: 'admin#csv_export'
  end

  if Rails.env.production?
    get '*path' => redirect('/')
  end
end

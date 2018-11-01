# frozen_string_literal: true

Rails.application.routes.draw do
  root 'base#index'
  get 'search', to: 'base#search_results'
  post 'search', to: 'base#search'
  devise_for :users

  scope module: 'v1', path: 'v1' do
    resources :users
    resources :events
  end

  scope :admin do
    get 'csv-export', to: 'admin#csv_export'
  end
end

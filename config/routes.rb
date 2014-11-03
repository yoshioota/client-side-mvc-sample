Rails.application.routes.draw do

  namespace :api do
    resources :tasks
  end

  namespace :backbonejs do
    resources :tasks
  end

  namespace :knockoutjs do
    resources :tasks
  end

  namespace :emberjs do
    resources :tasks
  end

  namespace :vuejs do
    resources :tasks
  end

  namespace :angularjs do
    resources :tasks
  end

  devise_for :users

  root 'welcome#index'
end

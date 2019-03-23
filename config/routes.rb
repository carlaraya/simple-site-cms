Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/:id', to: 'pages#show', as: 'page'

  # home page is manually defined in app/controllers/pages_controller.rb
  root 'pages#index'
  mount CarrierWave::PostgresqlTable::RackApp.new => "/uploads"
end

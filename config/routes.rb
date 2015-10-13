Rails.application.routes.draw do

  devise_for :users
  get '/' => 'channels#index', as: :root

  get '/top-sellers' => 'orders#index', as: 'top_sellers'

  post '/:start_date/:end_date' => 'channels#pick_dates', as: 'pick_dates'
  post '/:date' => 'channels#pick_single_date', as: 'pick_single_date_path'

  devise_scope :user do
    get 'logout', to: 'devise/sessions#destroy'
  end

end

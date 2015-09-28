Rails.application.routes.draw do

  devise_for :users
  get '/' => 'channels#index', as: :root

  post '/:start_date/:end_date' => 'channels#pick_dates', as: 'pick_dates'
  post '/:date' => 'channels#pick_single_date', as: 'pick_single_date_path'

end

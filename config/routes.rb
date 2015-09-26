Rails.application.routes.draw do

  get '/' => 'channels#index', as: :root

  post '/:start_date/:end_date' => 'channels#pick_dates', as: 'pick_dates'
  post '/:date' => 'channels#pick_single_date', as: 'pick_single_date_path'

  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
end

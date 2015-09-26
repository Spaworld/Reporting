Rails.application.routes.draw do

  get '/' => 'channels#index', as: :root

  # Account / Sales
  post '/:start_date/:end_date' => 'channels#pick_dates', as: 'pick_dates'
  post '/:date' => 'channels#pick_single_date', as: 'pick_single_date_path'
# Account / Sales
  #patch 'account/sales/toggle_shipped_state/:order_id' => 'accounts/sales#toggle_shipped_state', as: 'toggle_shipped_state'

end

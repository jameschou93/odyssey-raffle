Rails.application.routes.draw do
  get 'raffle_entries/create'

  get 'raffle_entries/index'

  devise_for :admins, controllers: {
        sessions: 'admins/sessions'
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "raffle_entries#index"
    resources :raffle_entries, only: [:index, :new, :create]
end

Rails.application.routes.draw do
  get 'activities/index'

	root "pages#show", page: "home"
	
  get "pages/thanks", page: "thanks"

  devise_for :guides, controllers: {
    sessions: 'guides/sessions',
    registrations: 'guides/registrations'
  }

	devise_for :tourists
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :activities do
    resources :guides
  end
  
  resources :guides do
    resources :activities
  end
end

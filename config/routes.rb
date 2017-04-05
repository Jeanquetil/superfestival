Rails.application.routes.draw do

	scope '(:locale)', locale: /fr|es/ do
	  devise_for :users
	  root to: 'festivals#index'

    resources :festivals, only: :show
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

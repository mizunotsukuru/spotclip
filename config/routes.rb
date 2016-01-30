Rails.application.routes.draw do
  # get 'top/index'

	root "top#index"
	get "about" => "top#about", as: "about"
	get "lesson/:action(/:name)" => "lesson"
	
	resources :events do
        collection { get "search" }
    end
end

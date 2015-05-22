Rails.application.routes.draw do
	resources :tweets
  	root                'static#form'
	post 'display'    => 'static#display'
end

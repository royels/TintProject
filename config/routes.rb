Rails.application.routes.draw do
	resources :tweets
  	root                'static#form'
	post 'display'    => 'tweets#display'
	get  'home'		  => 'static#form'
end

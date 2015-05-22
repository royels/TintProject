Rails.application.routes.draw do
  	root                'static#form'
	get 'display'    => 'static#display'
end

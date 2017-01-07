Rails.application.routes.draw do
	root 'home#index', page: 'home'
	get '/tweets', to: 'tweets#index'
	get '/tweets/new', to: 'tweets#new', as: :new_tweet
	get '/tweets/:id/edit', to: 'tweets#edit', as: :edit_tweet
	get '/tweets/:id', to: 'tweets#show', as: :tweet
	post '/tweets', to: 'tweets#create'
	patch '/tweets/:id', to: 'tweets#update'
	put '/tweets/:id', to: 'tweets#update'
	delete '/tweets/:id', to: 'tweets#destroy'
end

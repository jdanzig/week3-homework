Rails.application.routes.draw do

  root :to => redirect('/places')

  resources :places do
  	resources :reviews, :controller => :place_reviews, :only => [:create]
  end

end

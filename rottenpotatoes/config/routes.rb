Rottenpotatoes::Application.routes.draw do
  resources :movies 
  get 'search_director/:id' => 'movies#search_directors', as: 'search_directors'
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end

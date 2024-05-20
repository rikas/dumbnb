Rails.application.routes.draw do
  root to: 'flats#list'
  get 'flats', to: 'flats#list'
  # get flats/28
  # get flats/29
  # get flats/30
  get 'flats/:id', to: 'flats#show', as: :flat
end

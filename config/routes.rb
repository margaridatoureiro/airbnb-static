Rails.application.routes.draw do
  root to: "flats#index"
  # We're adding a dynamic value (:id) after the "/flats/"
  # we can find it in the params
  get "flats/:id", to: "flats#show", as: :flat
end

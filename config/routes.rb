Rails.application.routes.draw do
  root 'homepage#show'

  resource :searches, only: :show
end

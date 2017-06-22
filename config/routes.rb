Rails.application.routes.draw do
  get 'create', to: 'team_name#create'
  get 'show/:colour/:team_name', to: 'team_name#show'
  get 'show/:team_name', to: 'team_name#show'

  root to: 'team_name#create'
end

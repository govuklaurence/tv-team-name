Rails.application.routes.draw do
  get 'create', to: 'team_name#create'
  get 'show',   to: 'team_name#show'

  root to: 'team_name#create'
end

Rails.application.routes.draw do
  get  '/create', to: 'team_name#create'
  post '/create', to: 'team_name#create_sign'

  get  '/sign', to: 'team_name#sign'
  get  '/sign/:team_name', to: 'team_name#sign'
  get  '/sign/:team_name/:colour', to: 'team_name#sign'

  root to: 'team_name#create'
end

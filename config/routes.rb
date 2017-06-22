Rails.application.routes.draw do
  get 'team_name/create'
  get 'team_name/show'

  root to: 'team_name#create'
end

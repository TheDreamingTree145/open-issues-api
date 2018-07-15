Rails.application.routes.draw do
  get '/start', to: 'repo#start', as: 'start'
end

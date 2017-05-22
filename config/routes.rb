Rails.application.routes.draw do
  resources :students, only: :index

  post 'students' => 'students#create'
  get 'student/new' => "students#new", as: 'new/student'
  get '/student/:id', to: 'students#show', as: 'student'

end

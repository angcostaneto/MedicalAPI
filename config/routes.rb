Rails.application.routes.draw do
  # Doctor routes
  get 'doctor/:id', to: 'doctors#get', as: 'doctor'
  post 'doctor/create', to: 'doctors#create', as: 'doctor_create'
  post 'doctor/:id/update', to: 'doctors#update', as: 'doctor_update'
  delete 'doctor/:id', to: 'doctors#delete', as: 'doctor_delete'

  # Patient routes
  get 'patient/:id', to: 'patients#get', as: 'doctor'
  post 'patient/create', to: 'patients#create', as: 'doctor_create'
  post 'patient/:id/update', to: 'patients#update', as: 'doctor_update'
  delete 'patient/:id', to: 'patients#delete', as: 'doctor_delete'
end

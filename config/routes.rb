Rails.application.routes.draw do
  # Doctor routes
  get 'doctor/:id', to: 'doctors#get', as: 'doctor'
  post 'doctor/create', to: 'doctors#create', as: 'doctor_create'
  post 'doctor/:id/update', to: 'doctors#update', as: 'doctor_update'
  delete 'doctor/:id', to: 'doctors#delete', as: 'doctor_delete'
  post 'doctor/login', to: 'doctors_login#login', as: 'doctor_login'
  post 'doctor/logout', to: 'doctors_login#logout', as: 'doctor_logout'

  # Patient routes
  get 'patient/:id', to: 'patients#get', as: 'patient'
  post 'patient/create', to: 'patients#create', as: 'patient_create'
  post 'patient/:id/update', to: 'patients#update', as: 'patient_update'
  delete 'patient/:id', to: 'patients#delete', as: 'patient_delete'
  post 'patient/login', to: 'patients_login#login', as: 'patient_login'
  post 'patient/logout', to: 'patients_login#logout', as: 'patient_logout'
end

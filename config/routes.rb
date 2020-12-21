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

  # Medical Appointment Values routes
  get 'medical_appointment_value/:id', to: 'medical_appointment_values#get', as: 'medical_appointment_value'
  post 'medical_appointment_value/create', to: 'medical_appointment_values#create', as: 'medical_appointment_value_create'
  post 'medical_appointment_value/:id/update', to: 'medical_appointment_values#update', as: 'medical_appointment_value_update'
  delete 'medical_appointment_value/:id', to: 'medical_appointment_values#delete', as: 'medical_appointment_value_delete'

  # Medical Appointment routes
  get 'medical_appointment/:id', to: 'medical_appointments#get', as: 'medical_appointment'
  post 'medical_appointment/create', to: 'medical_appointments#create', as: 'medical_appointment_create'
  post 'medical_appointment/:id/update', to: 'medical_appointments#update', as: 'medical_appointment_update'
  delete 'medical_appointment/:id', to: 'medical_appointments#delete', as: 'medical_appointment_delete'

  # Medical Appointment routes
  get 'diagnosis/:id', to: 'diagnosis#get', as: 'diagnosis'
  post 'diagnosis/create', to: 'diagnosis#create', as: 'diagnosis_create'
  post 'diagnosis/:id/update', to: 'diagnosis#update', as: 'diagnosis_update'
  delete 'diagnosis/:id', to: 'diagnosis#delete', as: 'diagnosis_delete'
end

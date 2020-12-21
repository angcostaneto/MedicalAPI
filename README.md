# Software under construction not use in production

# Libraries used
* Bcrypt
    * For encrypt passwords
* JWT
    * For token authentication
  
# Third Parties Services
* Auth0

# Available routes:

## Doctor routes
* get 'doctor/:id', to: 'doctors#get', as: 'doctor'
* post 'doctor/create', to: 'doctors#create', as: 'doctor_create'
* post 'doctor/:id/update', to: 'doctors#update', as: 'doctor_update'
* delete 'doctor/:id', to: 'doctors#delete', as: 'doctor_delete'
* post 'doctor/login', to: 'doctors_login#login', as: 'doctor_login'
* post 'doctor/logout', to: 'doctors_login#logout', as: 'doctor_logout'

## Patient routes
* get 'patient/:id', to: 'patients#get', as: 'patient'
* post 'patient/create', to: 'patients#create', as: 'patient_create'
* post 'patient/:id/update', to: 'patients#update', as: 'patient_update'
* delete 'patient/:id', to: 'patients#delete', as: 'patient_delete'
* post 'patient/login', to: 'patients_login#login', as: 'patient_login'
* post 'patient/logout', to: 'patients_login#logout', as: 'patient_logout'

## Medical Appointment Values routes
* get 'medical_appointment_value/:id'
* post 'medical_appointment_value/create'
* post 'medical_appointment_value/:id/update'
* delete 'medical_appointment_value/:id'

## Medical Appointment routes
* get 'medical_appointment/:id'
* post 'medical_appointment/create'
* post 'medical_appointment/:id/update'
* delete 'medical_appointment/:id'

## Medical Appointment routes
* get 'diagnosis/:id'
* post 'diagnosis/create'
* post 'diagnosis/:id/update'
* delete 'diagnosis/:id'

# TODO
* Add roles for patients and doctors
* Add update method for controllers
* Add relation between models
* Create service to sync with google agenda

# Known issues
* Not revoking token when is logged out

# Next release
* 21/12/2020 - Update methods
* 23/12/2020 - Roles for patients and doctors
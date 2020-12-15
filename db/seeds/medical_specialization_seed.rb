# @see https://www.sgu.edu/blog/medical/ultimate-list-of-medical-specialties/
medical_specializations = [
  'ALLERGY & IMMUNOLOGY',
  'UROLOGY',
  'SURGERY',
  'RADIATION ONCOLOGY',
  'PSYCHIATRY',
  'PREVENTIVE MEDICINE',
  'PHYSICAL MEDICINE & REHABILITATION',
  'PEDIATRICS',
  'PATHOLOGY',
  'OPHTHALMOLOGY',
  'OBSTETRICS AND GYNECOLOGY',
  'NUCLEAR MEDICINE',
  'NEUROLOGY',
  'MEDICAL GENETICS',
  'INTERNAL MEDICINE',
  'FAMILY MEDICINE',
  'EMERGENCY MEDICINE',
  'DIAGNOSTIC RADIOLOGY',
  'DERMATOLOGY',
  'ANESTHESIOLOGY'
]

medical_specializations.each do |specialization|
  MedicalSpecialization.create({ name: specialization })
end

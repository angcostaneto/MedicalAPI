# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_27_015900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diagnoses", force: :cascade do |t|
    t.text "diagnosis"
    t.bigint "doctor_id"
    t.bigint "patient_id"
    t.bigint "medical_appointment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_diagnoses_on_doctor_id"
    t.index ["medical_appointment_id"], name: "index_diagnoses_on_medical_appointment_id"
    t.index ["patient_id"], name: "index_diagnoses_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "password_digest"
    t.integer "phone"
    t.string "document"
    t.bigint "medical_specializations_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["medical_specializations_id"], name: "index_doctors_on_medical_specializations_id"
  end

  create_table "health_plans", force: :cascade do |t|
    t.string "name"
    t.text "plan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medical_appointments", force: :cascade do |t|
    t.bigint "patients_id"
    t.bigint "doctors_id"
    t.time "min_duration"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctors_id"], name: "index_medical_appointments_on_doctors_id"
    t.index ["patients_id"], name: "index_medical_appointments_on_patients_id"
  end

  create_table "medical_appointments_values", force: :cascade do |t|
    t.decimal "value"
    t.bigint "doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "{:foreign_key=>true}_id"
    t.index ["doctor_id"], name: "index_medical_appointments_values_on_doctor_id"
    t.index ["{:foreign_key=>true}_id"], name: "index_medical_appointments_values_on_{:foreign_key=>true}_id"
  end

  create_table "medical_specializations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "password_digest"
    t.integer "phone"
    t.string "document"
    t.text "recommendation"
    t.bigint "health_plans_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["health_plans_id"], name: "index_patients_on_health_plans_id"
  end

  create_table "roles", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

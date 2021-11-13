json.extract! admin_patient, :id, :age, :gender, :firstname, :lastname, :email, :created_at, :updated_at
json.url admin_patient_url(admin_patient, format: :json)

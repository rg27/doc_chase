json.extract! admin_patient, :id, :pid, :externalPid, :user_id, :relatedUuse, :paymentType, :documentType, :dateOfBirth, :age, :gender, :race, :ethnicity, :street, :street2, :city, :state, :zip, :country, :phone, :mobile, :county, :email, :created_at, :updated_at
json.url admin_patient_url(admin_patient, format: :json)

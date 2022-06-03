json.extract! patient, :id, :name, :ssn, :dob, :medwallet_id, :payer_plan_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)

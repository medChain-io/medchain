json.extract! care_plan, :id, :fee_schedule_id, :patient_id, :date, :status_id, :created_at, :updated_at
json.url care_plan_url(care_plan, format: :json)

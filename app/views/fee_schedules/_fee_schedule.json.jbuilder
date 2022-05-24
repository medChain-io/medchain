json.extract! fee_schedule, :id, :provider_id, :cost, :action, :payer_plan_id, :treatment_id, :created_at, :updated_at
json.url fee_schedule_url(fee_schedule, format: :json)

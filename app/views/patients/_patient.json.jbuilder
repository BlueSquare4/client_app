json.extract! patient, :id, :first_name, :last_name, :phone, :diseases, :email, :date_of_admittance, :time_required_for_recovery, :created_at, :updated_at
json.url patient_url(patient, format: :json)

json.array!(@cohort_officers) do |cohort_officer|
  json.extract! cohort_officer, :id, :contact_id, :cohort_id, :role
  json.url cohort_officer_url(cohort_officer, format: :json)
end

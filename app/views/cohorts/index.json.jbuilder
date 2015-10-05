json.array!(@cohorts) do |cohort|
  json.extract! cohort, :id, :name, :location, :start_date, :end_date, :program_id
  json.url cohort_url(cohort, format: :json)
end

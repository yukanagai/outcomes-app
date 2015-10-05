json.array!(@students) do |student|
  json.extract! student, :id, :username, :password, :completed?, :employed?, :employer, :employed_as, :contact_id, :cohort_id
  json.url student_url(student, format: :json)
end

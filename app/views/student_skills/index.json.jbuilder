json.array!(@student_skills) do |student_skill|
  json.extract! student_skill, :id, :student_id, :skill_id, :experience
  json.url student_skill_url(student_skill, format: :json)
end

json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :email, :twitter, :github, :linkedin, :phone
  json.url contact_url(contact, format: :json)
end

json.array!(@contact_informations) do |contact_information|
  json.extract! contact_information, :id, :phone, :first_name, :last_name, :email, :organization_id
  json.url contact_information_url(contact_information, format: :json)
end

json.array!(@partner_types) do |partner_type|
  json.extract! partner_type, :id, :name, :description
  json.url partner_type_url(partner_type, format: :json)
end

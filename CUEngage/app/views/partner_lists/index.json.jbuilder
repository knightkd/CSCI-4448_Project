json.array!(@partner_lists) do |partner_list|
  json.extract! partner_list, :id, :organization_id
  json.url partner_list_url(partner_list, format: :json)
end

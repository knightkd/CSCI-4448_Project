json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :website, :description, :type_id, :catagory_id, :partner_type_id
  json.url organization_url(organization, format: :json)
end

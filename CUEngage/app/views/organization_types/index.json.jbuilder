json.array!(@organization_types) do |organization_type|
  json.extract! organization_type, :id, :name, :description
  json.url organization_type_url(organization_type, format: :json)
end

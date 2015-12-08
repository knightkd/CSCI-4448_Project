json.array!(@organization_catagories) do |organization_catagory|
  json.extract! organization_catagory, :id, :name, :description
  json.url organization_catagory_url(organization_catagory, format: :json)
end

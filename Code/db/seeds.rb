# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Organization Catagories"
items = ["Enviromental", "Housing", "Food", "Arts", "Homeless", "Education", 
  "Foundation", "Political", "GLBTG", "Human Rights", "Health", "Disabilities",
  "Immigration", "Outdoors"]
items.each do |item|
  found_item = OrganizationCatagory.find_by_name(item)
  unless found_item.present?
    OrganizationCatagory.create(name: item)
  end
end

puts "Organization types"
items = ["Non-Profit", "Government", "Campus", "University"]
items.each do |item|
  found_item = OrganizationType.find_by_name(item)
  unless found_item.present?
    OrganizationType.create(name: item)
  end
end
  
puts "Roles"
items = ["Admin", "Staff", "User"]
items.each do |item|
  found_item = Role.find_by_name(item)
  unless found_item.present?
    Role.create(name: item)
  end
end

puts "Partner Type"
items = ["INVST", "LSM", "Puksta"]
items.each do |item|
  found_item = PartnerType.find_by_name(item)
  unless found_item.present?
    PartnerType.create(name: item)
  end
end

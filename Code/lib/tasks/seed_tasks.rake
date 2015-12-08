namespace :seed_tasks do
  
  desc "add seeds and tasks for complete database"
  task :prepare_app => :environment do
    Rake::Task['db:schema:load'].execute
    Rake::Task['db:seed'].execute
    Rake::Task['seed_tasks:build_users'].execute
    Rake::Task['seed_tasks:build_organizations'].execute
  end
  
  desc "Builds Users"
  task :build_users => :environment do
    admin_role = Role.find_by_name("Admin")
    staff_role = Role.find_by_name("Staff")
    user_role = Role.find_by_name("User")
    users = [
      {first_name: "Chris", last_name: "Barge", role_id: user_role.id},
      {first_name: "Victor", last_name: "Hernandez", role_id: user_role.id},
      {first_name: "Scarlet", last_name: "Bowen", role_id: user_role.id},
      {first_name: "William", last_name: "Sweeny", role_id: user_role.id},
      {first_name: "Charlotte", last_name: "LaSasso", role_id: user_role.id},
      {first_name: "Erin", last_name: "Boeger", role_id: admin_role.id},
      {first_name: "Josh", last_name: "Rinaldi", role_id: admin_role.id},
      {first_name: "Eddie", last_name: "Crawford", role_id: admin_role.id},
      {first_name: "Kyle", last_name: "Knight", role_id: admin_role.id},
      {first_name: "Martha", last_name: "Hernandez", role_id: staff_role.id},
    ]
    users.each do |user|
      User.create(user)
    end

  end
  
  desc "Builds Organizations"
  task :build_organizations => :environment do
    educ = OrganizationCatagory.find_by_name("Education")
    homeless = OrganizationCatagory.find_by_name("Homeless")
    health = OrganizationCatagory.find_by_name("Health")
    arts = OrganizationCatagory.find_by_name("Arts")

    non_profit = OrganizationType.find_by_name("Non-Profit")
    gov = OrganizationType.find_by_name("Government")
    campus = OrganizationType.find_by_name("Campus")
    univ = OrganizationType.find_by_name("University")
    
    invst = PartnerType.find_by_name("INVST")
    lsm = PartnerType.find_by_name("LSM")
    pukstra = PartnerType.find_by_name("Pukstra")
    
    orgs = [
      {name: "Safehouse Progressive Alliance for Nonviolence", website: "http://www.safehousealliance.org", 
        type_id: non_profit.id, catagory_id: educ.id, partner_type_id: invst.id },
      {name: "School Readiness Initiative", website: "http://www.commfound.org", 
        type_id: non_profit.id, catagory_id: educ.id, partner_type_id: invst.id },
      {name: "Student Outreach & Retention Center for Equity (SORCE)", website: "http://www.colorado.edu/cue/", 
        type_id: campus.id, catagory_id: educ.id, partner_type_id: invst.id },
      {name: "Womens Resouce Center", website: "http://www.colorado.edu/wrc/", 
        type_id: campus.id, catagory_id: educ.id, partner_type_id: invst.id },
      {name: "BOHO", website: "http://boulderboho.org", 
        type_id: non_profit.id, catagory_id: homeless.id, partner_type_id: lsm.id },
      {name: "Boulder Community Health", website: "https://www.bch.org", 
        type_id: non_profit.id, catagory_id: health.id, partner_type_id: lsm.id },
      {name: "Boulder County Arts Alliance", website: "https://www.bouldercountyarts.org", 
        type_id: non_profit.id, catagory_id: arts.id, partner_type_id: lsm.id },
    ]
    orgs.each do |org|
      Organization.create(org)
    end
  end
  
end

# ["Enviromental", "Housing", "Food", "Arts", "Homeless", "Education",
#   "Foundation", "Political", "GLBTG", "Human Rights", "Health", "Disabilities",
  # "Immigration", "Outdoors"]
  
  
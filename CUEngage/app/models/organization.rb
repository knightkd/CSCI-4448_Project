# == Schema Information
#
# Table name: organizations
#
#  id              :integer          not null, primary key
#  name            :string
#  website         :string
#  description     :text
#  type_id         :integer
#  catagory_id     :integer
#  partner_type_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Organization < ActiveRecord::Base
  belongs_to :type, class_name: "OrganizationType"
  belongs_to :catagory, class_name: "OrganizationCatagory"
  belongs_to :partner_type
  
  has_many :contact_informations
  has_many :partner_lists
  
  has_and_belongs_to_many :partner_organizations, association_foreign_key: :organization_id
end

# == Schema Information
#
# Table name: organization_catagories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class OrganizationCatagory < ActiveRecord::Base
  has_many :organizations
end

# == Schema Information
#
# Table name: organization_types
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class OrganizationType < ActiveRecord::Base
  has_many :organizations
end

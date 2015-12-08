# == Schema Information
#
# Table name: partner_lists
#
#  id              :integer          not null, primary key
#  organization_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class PartnerList < ActiveRecord::Base
  belongs_to :organization
  
  has_and_belongs_to_many :organizations
end

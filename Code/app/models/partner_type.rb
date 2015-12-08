# == Schema Information
#
# Table name: partner_types
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PartnerType < ActiveRecord::Base
  has_many :organizations
end

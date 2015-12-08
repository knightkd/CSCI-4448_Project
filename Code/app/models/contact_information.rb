# == Schema Information
#
# Table name: contact_informations
#
#  id              :integer          not null, primary key
#  phone           :string
#  first_name      :string
#  last_name       :string
#  email           :string
#  organization_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class ContactInformation < ActiveRecord::Base
  belongs_to :organization
end

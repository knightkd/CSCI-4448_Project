class CreateOrganizationsPartnerLists < ActiveRecord::Migration
  def change
    create_table :organizations_partner_lists, id: false do |t|
      t.references :organization
      t.references :partner_list
    end
  end
end

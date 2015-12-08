class CreatePartnerLists < ActiveRecord::Migration
  def change
    create_table :partner_lists do |t|
      t.references :organization, index: true

      t.timestamps null: false
    end
    add_foreign_key :partner_lists, :organizations
  end
end

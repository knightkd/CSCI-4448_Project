# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151015030136) do

  create_table "contact_informations", force: :cascade do |t|
    t.string   "phone"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "contact_informations", ["organization_id"], name: "index_contact_informations_on_organization_id"

  create_table "organization_catagories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "organization_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.text     "description"
    t.integer  "type_id"
    t.integer  "catagory_id"
    t.integer  "partner_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "organizations", ["catagory_id"], name: "index_organizations_on_catagory_id"
  add_index "organizations", ["partner_type_id"], name: "index_organizations_on_partner_type_id"
  add_index "organizations", ["type_id"], name: "index_organizations_on_type_id"

  create_table "organizations_partner_lists", id: false, force: :cascade do |t|
    t.integer "organization_id"
    t.integer "partner_list_id"
  end

  create_table "partner_lists", force: :cascade do |t|
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "partner_lists", ["organization_id"], name: "index_partner_lists_on_organization_id"

  create_table "partner_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["role_id"], name: "index_users_on_role_id"

end

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

ActiveRecord::Schema.define(version: 20170912154037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string   "appointment"
    t.string   "Contexte"
    t.string   "action"
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "attachinary_files", force: :cascade do |t|
    t.integer  "attachinariable_id"
    t.string   "attachinariable_type"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "citysearches", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "mail"
    t.string   "phone_number"
    t.string   "portable"
    t.string   "skype"
    t.string   "website"
    t.string   "facebook"
    t.string   "linkedin"
    t.string   "job"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "mail"
  end

  create_table "estimations", force: :cascade do |t|
    t.string   "number"
    t.integer  "surface"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "file"
    t.integer  "neighborhood_id"
    t.integer  "city_id"
    t.integer  "citysearch_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "slug"
    t.index ["city_id"], name: "index_estimations_on_city_id", using: :btree
    t.index ["citysearch_id"], name: "index_estimations_on_citysearch_id", using: :btree
    t.index ["neighborhood_id"], name: "index_estimations_on_neighborhood_id", using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "lands", force: :cascade do |t|
    t.string   "number"
    t.integer  "surface"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "file"
    t.integer  "neighborhood_id"
    t.integer  "city_id"
    t.integer  "citysearch_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["city_id"], name: "index_lands_on_city_id", using: :btree
    t.index ["citysearch_id"], name: "index_lands_on_citysearch_id", using: :btree
    t.index ["neighborhood_id"], name: "index_lands_on_neighborhood_id", using: :btree
  end

  create_table "link_partners", force: :cascade do |t|
    t.integer  "sale_id"
    t.integer  "partner_id"
    t.string   "link"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partner_id"], name: "index_link_partners_on_partner_id", using: :btree
    t.index ["sale_id"], name: "index_link_partners_on_sale_id", using: :btree
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "citysearch_id"
    t.index ["city_id"], name: "index_neighborhoods_on_city_id", using: :btree
  end

  create_table "partners", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "price_min_house"
    t.integer  "price_average_house"
    t.integer  "price_max_house"
    t.integer  "price_min_apartment"
    t.integer  "price_average_apartment"
    t.integer  "price_max_apartment"
    t.string   "street"
    t.string   "city"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "neighborhood"
    t.string   "type_of_street"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "slug"
    t.string   "address"
    t.string   "zip_code"
  end

  create_table "prospects", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "society"
    t.string   "phone_number"
    t.string   "mail"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer  "price"
    t.string   "title"
    t.text     "description"
    t.string   "city"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "slug"
    t.boolean  "active",              default: true
    t.integer  "bedroom"
    t.string   "class_energy"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "zip_code"
    t.string   "living"
    t.string   "number_class_energy"
    t.string   "gaz_serre"
    t.string   "number_gaz_serre"
    t.string   "taxe"
    t.string   "exposition"
    t.string   "heating"
    t.string   "phase"
    t.index ["slug"], name: "index_sales_on_slug", using: :btree
  end

  create_table "samples", force: :cascade do |t|
    t.string   "house"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "estimation"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "estimations", "cities"
  add_foreign_key "estimations", "citysearches"
  add_foreign_key "estimations", "neighborhoods"
  add_foreign_key "lands", "cities"
  add_foreign_key "lands", "citysearches"
  add_foreign_key "lands", "neighborhoods"
  add_foreign_key "link_partners", "partners"
  add_foreign_key "link_partners", "sales"
  add_foreign_key "neighborhoods", "cities"
end

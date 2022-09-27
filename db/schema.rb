# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_27_134234) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", precision: nil, null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "matiere_plats", force: :cascade do |t|
    t.bigint "matiere_id"
    t.bigint "plat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matiere_id"], name: "index_matiere_plats_on_matiere_id"
    t.index ["plat_id"], name: "index_matiere_plats_on_plat_id"
  end

  create_table "matieres", force: :cascade do |t|
    t.string "matiere_name"
    t.integer "quantite_resté"
    t.integer "quantite_actuelle"
    t.integer "quantite_max"
    t.integer "quantite_min"
    t.date "date_fabrication"
    t.date "date_fin_consomation"
    t.string "nom_magasin"
    t.integer "duree_stock"
    t.float "prix_unitaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plats", force: :cascade do |t|
    t.string "nom_plat"
    t.float "prix_unitaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postes", force: :cascade do |t|
    t.string "nom_poste"
    t.integer "nombre_emp"
    t.date "date_debut"
    t.date "date_fin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_postes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "lastname"
    t.string "firstname"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.date "birthdate"
    t.string "adress"
    t.integer "phone"
    t.float "salary"
    t.integer "role"
    t.float "Hours_retard"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "matiere_plats", "matieres"
  add_foreign_key "matiere_plats", "plats"
  add_foreign_key "postes", "users"
end

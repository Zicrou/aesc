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

ActiveRecord::Schema.define(version: 2020_08_30_042758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boursiers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carteconsulaires", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etudiants", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.date "date_nasissance"
    t.bigint "telephone"
    t.string "passport"
    t.date "date_passport_expiration"
    t.string "adresse"
    t.date "annee_langue_chinoise"
    t.string "universite_annee_langue_chinoise"
    t.date "annee_debut_filiere"
    t.string "province_uinversite_filiere"
    t.string "universite_filiere"
    t.string "filiere"
    t.integer "duree_formation"
    t.string "langue_de_formation"
    t.date "annee_de_graduation"
    t.integer "niveau_formation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "genre_id"
    t.bigint "carteconsulaire_id"
    t.bigint "boursier_id"
    t.bigint "typebourse_id"
    t.bigint "faireanneelangue_id"
    t.bigint "province_id"
    t.bigint "langueformation_id"
    t.index ["boursier_id"], name: "index_etudiants_on_boursier_id"
    t.index ["carteconsulaire_id"], name: "index_etudiants_on_carteconsulaire_id"
    t.index ["faireanneelangue_id"], name: "index_etudiants_on_faireanneelangue_id"
    t.index ["genre_id"], name: "index_etudiants_on_genre_id"
    t.index ["langueformation_id"], name: "index_etudiants_on_langueformation_id"
    t.index ["province_id"], name: "index_etudiants_on_province_id"
    t.index ["typebourse_id"], name: "index_etudiants_on_typebourse_id"
  end

  create_table "faireanneelangues", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "langueformations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typebourses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "etudiants", "boursiers"
  add_foreign_key "etudiants", "carteconsulaires"
  add_foreign_key "etudiants", "faireanneelangues"
  add_foreign_key "etudiants", "genres"
  add_foreign_key "etudiants", "langueformations"
  add_foreign_key "etudiants", "provinces"
  add_foreign_key "etudiants", "typebourses"
end

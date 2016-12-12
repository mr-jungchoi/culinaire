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

ActiveRecord::Schema.define(version: 20161212054420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cookables", force: :cascade do |t|
    t.integer  "pantry_id",     null: false
    t.integer  "ingredient_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["ingredient_id"], name: "index_cookables_on_ingredient_id", using: :btree
    t.index ["pantry_id"], name: "index_cookables_on_pantry_id", using: :btree
  end

  create_table "favorite_recipes", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "recipe_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_favorite_recipes_on_recipe_id", using: :btree
    t.index ["user_id"], name: "index_favorite_recipes_on_user_id", using: :btree
  end

  create_table "ingredient_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name",               null: false
    t.integer  "ingredient_type_id", null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["ingredient_type_id"], name: "index_ingredients_on_ingredient_type_id", using: :btree
  end

  create_table "pantries", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pantries_on_user_id", using: :btree
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name",               null: false
    t.text     "ingredients",        null: false
    t.text     "instructions",       null: false
    t.integer  "minutes_to_prepare"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "sources", force: :cascade do |t|
    t.integer  "recipe_id",      null: false
    t.string   "sourcable_type", null: false
    t.integer  "sourcable_id",   null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["recipe_id"], name: "index_sources_on_recipe_id", using: :btree
  end

  create_table "spoonaculars", force: :cascade do |t|
    t.string   "source_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "yummlys", force: :cascade do |t|
    t.string   "source_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cookables", "ingredients"
  add_foreign_key "cookables", "pantries"
  add_foreign_key "favorite_recipes", "recipes"
  add_foreign_key "favorite_recipes", "users"
  add_foreign_key "ingredients", "ingredient_types"
  add_foreign_key "pantries", "users"
end

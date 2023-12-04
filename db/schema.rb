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

ActiveRecord::Schema.define(version: 2023_12_04_021635) do

  create_table "occurrences", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "cobradeCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "state_id"
    t.integer "resource_id"
    t.integer "person_id"
    t.index ["person_id"], name: "index_occurrences_on_person_id"
    t.index ["resource_id"], name: "index_occurrences_on_resource_id"
    t.index ["state_id"], name: "index_occurrences_on_state_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "occurrence_id"
    t.index ["occurrence_id"], name: "index_resources_on_occurrence_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "occurrence_id"
    t.index ["occurrence_id"], name: "index_states_on_occurrence_id"
  end

end

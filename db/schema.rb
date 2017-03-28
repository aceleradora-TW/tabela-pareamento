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

ActiveRecord::Schema.define(version: 20170328163731) do

  create_table "pairings", force: :cascade do |t|
    t.integer "student_id"
    t.integer "pair_id"
    t.integer "count",      default: 0
    t.index ["pair_id"], name: "index_pairings_on_pair_id"
    t.index ["student_id"], name: "index_pairings_on_student_id"
  end

  create_table "pairs", force: :cascade do |t|
    t.string "name_pairs"
  end

  create_table "students", force: :cascade do |t|
    t.string "name_students"
  end

end

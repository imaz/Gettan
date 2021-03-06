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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120109084753) do

  create_table "attendances", :force => true do |t|
    t.integer  "calendar_id"
    t.integer  "period"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attendances", ["calendar_id"], :name => "index_attendances_on_calendar_id"
  add_index "attendances", ["subject_id"], :name => "index_attendances_on_subject_id"

  create_table "calendars", :force => true do |t|
    t.date     "school_day"
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.integer  "credits"
    t.integer  "attendance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

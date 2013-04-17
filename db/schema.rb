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

ActiveRecord::Schema.define(:version => 20130417040138) do

  create_table "building_locations", :force => true do |t|
    t.integer  "building_id"
    t.integer  "location_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "building_locations", ["building_id"], :name => "index_building_locations_on_building_id"
  add_index "building_locations", ["location_id"], :name => "index_building_locations_on_location_id"

  create_table "buildings", :force => true do |t|
    t.string    "name"
    t.text      "description"
    t.integer   "start_year"
    t.integer   "end_year"
    t.timestamp "created_at",  :null => false
    t.timestamp "updated_at",  :null => false
  end

  create_table "establishments", :force => true do |t|
    t.string    "name"
    t.text      "description"
    t.timestamp "created_at",  :null => false
    t.timestamp "updated_at",  :null => false
  end

  create_table "existences", :force => true do |t|
    t.integer   "location_id"
    t.integer   "establishment_id"
    t.text      "description"
    t.integer   "start_year"
    t.integer   "end_year"
    t.timestamp "created_at",       :null => false
    t.timestamp "updated_at",       :null => false
    t.string    "address"
  end

  add_index "existences", ["establishment_id"], :name => "establishment_id"
  add_index "existences", ["location_id"], :name => "location_id"

  create_table "locations", :force => true do |t|
    t.string    "address"
    t.float     "latitude"
    t.float     "longitude"
    t.timestamp "created_at",  :null => false
    t.timestamp "updated_at",  :null => false
    t.integer   "building_id"
  end

  add_index "locations", ["building_id"], :name => "building_id"

  create_table "sources", :force => true do |t|
    t.text      "content"
    t.integer   "sourceable_id"
    t.string    "sourceable_type"
    t.timestamp "created_at",      :null => false
    t.timestamp "updated_at",      :null => false
  end

  add_index "sources", ["sourceable_id", "sourceable_type"], :name => "sourceable_id"

end

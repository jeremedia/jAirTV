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

ActiveRecord::Schema.define(:version => 20111005171529) do

  create_table "photos", :force => true do |t|
    t.integer  "owner_id"
    t.string   "flickr_id"
    t.string   "owner"
    t.string   "secret"
    t.string   "server"
    t.string   "farm"
    t.string   "title"
    t.boolean  "ispublic"
    t.boolean  "isfriend"
    t.boolean  "isfamily"
    t.string   "url_sq"
    t.integer  "height_sq"
    t.integer  "width_sq"
    t.string   "url_t"
    t.integer  "height_t"
    t.integer  "width_t"
    t.string   "url_s"
    t.integer  "height_s"
    t.integer  "width_s"
    t.string   "url_m"
    t.integer  "height_m"
    t.integer  "width_m"
    t.string   "url_z"
    t.integer  "height_z"
    t.integer  "width_z"
    t.string   "url_l"
    t.integer  "height_l"
    t.integer  "width_l"
    t.string   "url_o"
    t.integer  "height_o"
    t.integer  "width_o"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

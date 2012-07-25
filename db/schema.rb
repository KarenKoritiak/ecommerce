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

ActiveRecord::Schema.define(:version => 20120725010037) do

  create_table "fieldtypes", :force => true do |t|
    t.string   "name",        :null => false
    t.string   "description", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "producttypefields", :force => true do |t|
    t.string   "name",           :null => false
    t.string   "defaultvalue"
    t.boolean  "required",       :null => false
    t.integer  "fieldtype_id",   :null => false
    t.integer  "producttype_id", :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "producttypefields", ["fieldtype_id"], :name => "index_producttypefields_on_fieldtype_id"
  add_index "producttypefields", ["producttype_id"], :name => "index_producttypefields_on_producttype_id"

  create_table "producttypes", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

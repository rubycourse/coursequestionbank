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

ActiveRecord::Schema.define(:version => 20150407093217) do

  create_table "collections", :force => true do |t|
    t.string   "name"
    t.datetime "last_used"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "instructor_id"
  end

  create_table "collections_instructors", :id => false, :force => true do |t|
    t.integer "collection_id"
    t.integer "instructor_id"
  end

  create_table "collections_problems", :id => false, :force => true do |t|
    t.integer "collection_id"
    t.integer "problem_id"
  end

  create_table "instructors", :force => true do |t|
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.string   "privilege"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "current_collection"
  end

  create_table "problems", :force => true do |t|
    t.integer  "instructor_id"
    t.string   "text"
    t.datetime "created_date"
    t.string   "created_by"
    t.boolean  "is_public"
    t.datetime "last_used"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.text     "rendered_text"
  end

  create_table "problems_tags", :id => false, :force => true do |t|
    t.integer "problem_id"
    t.integer "tag_id"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

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

ActiveRecord::Schema.define(:version => 20120129191857) do

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "page_image_file_name"
    t.string   "page_image_content_type"
    t.integer  "page_image_file_size"
    t.datetime "page_image_updated_at"
  end

  add_index "pages", ["task_id"], :name => "index_pages_on_task_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["task_id"], :name => "index_tags_on_task_id"

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.string   "reference"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

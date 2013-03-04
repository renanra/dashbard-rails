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

ActiveRecord::Schema.define(:version => 20130304225246) do

  create_table "metrics", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "metrics_projects", :id => false, :force => true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.integer  "metric_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "metrics_projects", ["metric_id"], :name => "index_metrics_projects_on_metric_id"
  add_index "metrics_projects", ["project_id", "metric_id"], :name => "index_metrics_projects_on_project_id_and_metric_id"
  add_index "metrics_projects", ["project_id"], :name => "index_metrics_projects_on_project_id"

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "git_url"
    t.string   "path"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

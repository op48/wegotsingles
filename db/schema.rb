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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140605093342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ethnicities", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "messages", force: true do |t|
    t.string   "subject"
    t.text     "body"
    t.string   "sender_username"
    t.integer  "sender_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "message_id"
    t.boolean  "read",               default: false
    t.integer  "recipient_id"
    t.string   "recipient_username"
  end

  create_table "user_ethnicities", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ethnicity_id"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                                          default: "", null: false
    t.string   "encrypted_password",                             default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                  default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "type"
    t.string   "preference"
    t.date     "birthday"
    t.integer  "age"
    t.string   "gender"
    t.text     "about"
    t.string   "image_url"
    t.decimal  "height",                 precision: 6, scale: 2
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

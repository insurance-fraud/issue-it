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

ActiveRecord::Schema.define(version: 20190112180556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "payments", force: :cascade do |t|
    t.string "pan"
    t.integer "security_code"
    t.string "expiry_date"
    t.string "card_holder_name"
    t.integer "acquirer_order_id"
    t.datetime "acquirer_order_timestamp"
    t.integer "issuer_order_id"
    t.datetime "issuer_order_timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "pan"
    t.integer "security_code"
    t.string "expiry_date"
    t.string "card_holder_name"
    t.float "total_balance"
    t.float "reserved_balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

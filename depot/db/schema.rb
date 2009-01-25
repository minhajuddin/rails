# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 3) do

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price",       :precision => 8, :scale => 2, :default => 0.0
  end

end

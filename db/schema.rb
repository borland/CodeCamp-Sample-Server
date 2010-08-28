ActiveRecord::Schema.define(:version => 20100815044053) do

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.integer  "person_id"
    t.string   "caption"
    t.string   "mime_type"
    t.binary   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

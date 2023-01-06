# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_06_134638) do
  create_table "futurestudents", force: :cascade do |t|
    t.string "Name"
    t.string "Mother_Name"
    t.string "Father_Name"
    t.string "Email"
    t.integer "Run"
    t.integer "Dv"
    t.date "Birthday"
    t.date "Deleted_At"
    t.string "Password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string "Name"
    t.string "Email"
    t.integer "Run"
    t.integer "Dv"
    t.date "Deleted_At"
    t.string "Password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "Name"
    t.string "Mother_Name"
    t.string "Father_Name"
    t.string "Email"
    t.integer "Run"
    t.integer "Dv"
    t.integer "Telefono"
    t.date "Birthday"
    t.date "Year_Ingre"
    t.date "Deleted_At"
    t.string "Password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "password_confirmation"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "Name"
    t.string "Mother_Name"
    t.string "Father_Name"
    t.string "Email"
    t.integer "Run"
    t.integer "Dv"
    t.date "Birthday"
    t.date "Deleted_At"
    t.string "Password"
    t.date "Year_Ingreso"
    t.date "Year_Egreso"
    t.date "Year_Teacher"
    t.integer "Telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

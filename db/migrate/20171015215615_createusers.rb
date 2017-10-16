class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    t.string :first_name, {null: false, limit: 60}
    t.string :last_name, {null: false, limit: 60}
    t.string :email, {null: false, limit: 60}
    t.string :password_hash
    t.string :default_location
    t.timestamps
  end
end

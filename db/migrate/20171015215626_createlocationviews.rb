class CreateLocationViews < ActiveRecord::Migration[5.1]
  def change
    create_table :location_views do |t|
    t.string :location, {null: false}
    t.string :user_id, {null: false}
    t.timestamps
  end
end

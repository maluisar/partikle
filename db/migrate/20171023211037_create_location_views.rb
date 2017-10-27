class CreateLocationViews < ActiveRecord::Migration[5.1]
  def change
    create_table :location_views do |t|

      t.string :zipcode, {null: false}
      t.string :user_id
      t.string :aqi
      t.string :recs
      t.string :sports
      t.string :outside

      t.timestamps

    end
  end
end


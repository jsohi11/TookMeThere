class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :country_name
      t.boolean :visisted
      t.string :country_badge_visisted
      t.string :country_badge_not_visited

      t.timestamps null: false
    end
  end
end

class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture

      t.timestamps null: false
    end
  end
end

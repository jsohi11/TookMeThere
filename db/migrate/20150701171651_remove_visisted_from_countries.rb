class RemoveVisistedFromCountries < ActiveRecord::Migration
  def change
    remove_column :countries, :visisted, :string
  end
end

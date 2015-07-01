class AddVisitedToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :visited, :boolean
  end
end

class AddPictureToAuthorization < ActiveRecord::Migration
  def change
    add_column :authorizations, :picture, :string
  end
end

class RemoveOauthDetailsToAuthorization < ActiveRecord::Migration
  def change
    remove_column :authorizations, :oauth_token, :string
    remove_column :authorizations, :oauth_expires_at, :string
  end
end

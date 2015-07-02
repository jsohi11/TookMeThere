class AddOauthDetailsToAuthorization < ActiveRecord::Migration
  def change
    add_column :authorizations, :oauth_token, :string
    add_column :authorizations, :oauth_expires_at, :datetime
    add_column :authorizations, :expires, :boolean
  end
end

class AdjustDoorkeeperFk < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :oauth_access_grants, :users
    remove_foreign_key :oauth_access_tokens, :users
  end
end

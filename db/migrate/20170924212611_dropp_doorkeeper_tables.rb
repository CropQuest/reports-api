class DroppDoorkeeperTables < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key "oauth_access_grants", column: "application_id"
    remove_foreign_key "oauth_access_grants", column: "resource_owner_id"
    remove_foreign_key "oauth_access_tokens", column: "application_id"
    remove_foreign_key "oauth_access_tokens", column: "resource_owner_id"
    drop_table "oauth_access_grants"
    drop_table "oauth_access_tokens"
    drop_table "oauth_applications"
  end
end

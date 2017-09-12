class AddReportAdminToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :report_admin, :boolean, default: false
  end
end

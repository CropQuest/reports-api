class RemoveReportOptions < ActiveRecord::Migration[5.1]
  def change
    drop_table :report_options
    drop_table :report_type_options
  end
end

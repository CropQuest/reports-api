class CreateReportOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :report_options do |t|
      t.belongs_to :report_type_option, index: true
      t.belongs_to :report, index: true
      t.timestamps
    end
  end
end

class CreateReportTypeOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :report_type_options do |t|
      t.belongs_to :report_type, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

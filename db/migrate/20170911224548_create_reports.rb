class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :report_type, foreign_key: true
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :notes
      t.boolean :logo_enabled

      t.timestamps
    end
  end
end

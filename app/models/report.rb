class Report < ApplicationRecord
  belongs_to :user
  belongs_to :report_type

  validates_presence_of :report_type, :name, :start_date, :end_date
end

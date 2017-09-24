class Report < ApplicationRecord
  belongs_to :user
  belongs_to :report_type
  has_many :report_options
  has_many :report_type_options, through: :report_options

  validates_presence_of :report_type, :name, :start_date, :end_date
end

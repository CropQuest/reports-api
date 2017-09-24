class ReportTypeOption < ApplicationRecord
  belongs_to :report_type
  has_many :report_options
  has_many :reports, through: :report_options
end

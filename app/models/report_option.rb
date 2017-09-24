class ReportOption < ApplicationRecord
  belongs_to :report_type_option
  belongs_to :report
end

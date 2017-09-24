class ReportSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :notes, :logo_enabled
  has_one :user
  has_one :report_type
end

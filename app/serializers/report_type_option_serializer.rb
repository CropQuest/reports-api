class ReportTypeOptionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :report_type
end

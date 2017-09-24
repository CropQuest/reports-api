class ReportTypeOptionSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :report_type
end

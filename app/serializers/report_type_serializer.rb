class ReportTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :report_type_options
end

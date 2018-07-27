class DefectDetailSerializer < ActiveModel::Serializer
  attributes :id, :defect_id, :comment, :picture, :created_at, :updated_at
end

class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :is_completed

  has_one :user
end

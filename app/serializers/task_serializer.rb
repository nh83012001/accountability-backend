class TaskSerializer < ActiveModel::Serializer
  attributes :name,:description
  has_many :likes
  has_many :comments
end

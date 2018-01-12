class TaskSerializer < ActiveModel::Serializer
  attributes :description
  has_many :likes
  has_many :commentss
end

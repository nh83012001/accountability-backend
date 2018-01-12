class Task < ApplicationRecord
  has_many :usertasks
  has_many :users, through: :usertasks
  has_many :likes
  has_many :comments
end

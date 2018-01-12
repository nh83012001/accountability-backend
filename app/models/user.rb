class User < ApplicationRecord
  has_many :usertasks
  has_many :tasks, through: :usertasks
end

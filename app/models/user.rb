class User < ApplicationRecord
  has_many :usertasks
  has_many :tasks, through: :usertasks

  has_secure_password
end

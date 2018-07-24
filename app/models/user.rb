class User < ApplicationRecord
  has_secure_password

  has_many :user_groups
  has_many :groups, through: :user_groups

  validates_presence_of :first_name, :last_name, :email, :password_digest
end

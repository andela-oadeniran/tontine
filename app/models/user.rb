class User < ApplicationRecord
  has_secure_password

  has_many :user_groups
  has_many :groups, through: :user_groups

  # validates_presence_of :email, :password_digest
  before_create :validate_presence_of_email

  private

  def validate_presence_of_email
    raise ActiveRecord::InvalidRecord unless self.email.present?
  end
end

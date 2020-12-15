class UserBase < ApplicationRecord
  self.abstract_class = true

  has_secure_password
  validates :name, presence: true
  validates :password, presence: true
  validates :phone, presence: true
  validates :document, presence: true
  VALID_EMAIL_FORMAT = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i.freeze
  validates :email, presence: true, format: { with: VALID_EMAIL_FORMAT },
                    uniqueness: { case_sensitive: false }
  before_save { self.email = email.downcase }
end

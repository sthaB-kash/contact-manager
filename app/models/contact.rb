class Contact < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /\A[0-9]{10,13}\z/

  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :phone_number, presence: true, format: { with: VALID_PHONE_REGEX }

  def self.search(query)
    where('name ILIKE ? OR email ILIKE ? OR phone_number ILIKE ?', "%#{query}%", "%#{query}%", "%#{query}%")
  end
end

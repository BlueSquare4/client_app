class Patient < ApplicationRecord
  validates :first_name, :last_name, :phone, :email, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :time_required_for_recovery, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  belongs_to :model, optional: true
end

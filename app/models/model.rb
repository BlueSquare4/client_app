class Model < ApplicationRecord
  has_many :patients
  before_validation :set_default_role
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= 'doctor'  # Default role
  end

  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end

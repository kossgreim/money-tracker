class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  ## Validation
  validates :name, :last_name, presence: true
  validates :name, :last_name, length: {in: 1..100}

  before_save :generate_uid

  private

  def generate_uid
    self.uid = SecureRandom.uuid
  end
end

class User < ActiveRecord::Base
  has_secure_password

  has_many :registrations
  validates :name, presence: true
  validates :email, presence: true, format: /\A\S+@\S+\z/, uniqueness: { case_sensitiv: false }

def self.authenticate(email, password)

	user = User.find_by(:email => email)
	user && user.authenticate(password)
end


end

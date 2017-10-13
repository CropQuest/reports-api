class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reports, dependent: :destroy

  validates_presence_of :first_name, :last_name, :city, :region, :country
end

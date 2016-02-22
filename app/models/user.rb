class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  has_one :school
  has_and_belongs_to_many :committees
  has_one :bill
  belongs_to :school
  validates_formatting_of :phone, using: :us_phone
end

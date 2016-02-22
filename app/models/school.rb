class School < ActiveRecord::Base
  has_many :users
  has_one :school_request
  has_many :payments
  validates_formatting_of :phone, using: :us_phone
end

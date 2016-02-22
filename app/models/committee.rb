class Committee < ActiveRecord::Base
  belongs_to :body
  has_and_belongs_to_many :users
  has_many :bills
  validates_formatting_of :official_website, using: :url
end

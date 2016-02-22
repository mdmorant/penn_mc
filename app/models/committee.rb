class Committee < ActiveRecord::Base
  belongs_to :body
  has_and_belongs_to_many :users
end

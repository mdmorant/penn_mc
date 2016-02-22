class Bill < ActiveRecord::Base
  belongs_to :committee
  belongs_to :user
end

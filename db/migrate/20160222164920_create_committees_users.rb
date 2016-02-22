class CreateCommitteesUsers < ActiveRecord::Migration
  def change
    create_table :committees_users do |t|
      t.belongs_to :committee, index: true
      t.belongs_to :user, index: true
    end
  end
end

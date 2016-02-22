class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.references :committee, index: true
      t.references :user, index: true
      t.string :title
      t.string :status
      t.integer :votes_yea
      t.integer :votes_nay
      t.integer :votes_abs
      t.boolean :recommended

      t.timestamps
    end
  end
end

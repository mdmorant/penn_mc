class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.references :body, index: true
      t.string :name
      t.text :jpaper
      t.string :official_website

      t.timestamps
    end
  end
end

class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :breed
      t.string :gender
      t.string :owner
      t.string :coat
      t.text :feature

      t.timestamps
    end
  end
end

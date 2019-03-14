class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :birthday
      t.string :gender
      t.string :birthplace
      t.string :walk
      t.string :food
      t.string :trick
      t.text :character
      t.text :operation
      t.text :test
      t.text :history
      t.text :illness

      t.timestamps
    end
  end
end

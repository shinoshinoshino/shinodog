class CreatePosts < ActiveRecord::Migration[5.2]
  def up
    create_table :posts do |t|
      t.date :date
      t.numeric :weight
      t.decimal :difference, precision: 3, scale: 2

      t.timestamps
    end
    
    def down
      create_table :posts do |t|
        t.date :date
        t.numeric :weight
        t.decimal :difference, precision: 3, scale: 2

        t.timestamps
      end
  end
end

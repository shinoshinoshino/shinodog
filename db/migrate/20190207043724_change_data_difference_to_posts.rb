class ChangeDataDifferenceToPosts < ActiveRecord::Migration[5.2]
  def up
    change_column :posts, :difference, :decimal
  end
  def down
    change_column :posts, :difference, :float
  end
end

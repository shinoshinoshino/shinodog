class ChangeDataWeightToPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :weight, :float
  end
end

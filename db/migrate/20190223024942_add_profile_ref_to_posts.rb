class AddProfileRefToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :profile, foreign_key: true
  end
end

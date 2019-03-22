class AddUserIdToMedicines < ActiveRecord::Migration[5.2]
  def change
    add_column :medicines, :user_id, :integer
  end
end

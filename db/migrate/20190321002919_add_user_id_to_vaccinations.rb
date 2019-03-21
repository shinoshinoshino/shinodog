class AddUserIdToVaccinations < ActiveRecord::Migration[5.2]
  def change
    add_column :vaccinations, :user_id, :integer
  end
end

class AddNameToMedicine < ActiveRecord::Migration[5.2]
  def change
    add_column :medicines, :name, :string
  end
end

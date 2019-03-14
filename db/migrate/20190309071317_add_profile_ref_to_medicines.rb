class AddProfileRefToMedicines < ActiveRecord::Migration[5.2]
  def change
    add_reference :medicines, :profile, foreign_key: true
  end
end

class AddFleaToVaccination < ActiveRecord::Migration[5.2]
  def change
    add_column :vaccinations, :flea, :date
  end
end

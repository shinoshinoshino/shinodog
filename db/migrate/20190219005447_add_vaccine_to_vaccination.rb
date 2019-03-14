class AddVaccineToVaccination < ActiveRecord::Migration[5.2]
  def change
    add_column :vaccinations, :vaccine, :date
  end
end

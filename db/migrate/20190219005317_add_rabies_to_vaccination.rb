class AddRabiesToVaccination < ActiveRecord::Migration[5.2]
  def change
    add_column :vaccinations, :rabies, :date
  end
end

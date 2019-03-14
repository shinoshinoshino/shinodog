class AddFilariaToVaccination < ActiveRecord::Migration[5.2]
  def change
    add_column :vaccinations, :filaria, :date
  end
end

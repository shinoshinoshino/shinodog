class CreateVaccinations < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccinations do |t|
      t.date :date

      t.timestamps
    end
  end
end

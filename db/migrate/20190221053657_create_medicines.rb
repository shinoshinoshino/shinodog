class CreateMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :medicines do |t|
      t.string :drug
      t.date :date

      t.timestamps
    end
  end
end

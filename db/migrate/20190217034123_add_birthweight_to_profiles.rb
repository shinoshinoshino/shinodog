class AddBirthweightToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :birthweight, :string
  end
end

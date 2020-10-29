class RemoveprovinceUinversiteFiliereFromEtudiant < ActiveRecord::Migration[5.2]
  def change
    remove_column :etudiants, :province_uinversite_filiere, :string
  end
end

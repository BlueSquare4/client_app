class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :diseases
      t.string :email
      t.date :date_of_admittance
      t.integer :time_required_for_recovery

      t.timestamps
    end
  end
end

class AddModelRefToPatients < ActiveRecord::Migration[6.0]
  def change
    add_reference :patients, :model, foreign_key: true
  end
end

class AddRoleToModels < ActiveRecord::Migration[7.1]
  def change
    add_column :models, :role, :string
  end
end

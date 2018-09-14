class AddMasterToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :master, :integer
  end
end

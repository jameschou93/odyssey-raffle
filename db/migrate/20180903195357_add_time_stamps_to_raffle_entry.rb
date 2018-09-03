class AddTimeStampsToRaffleEntry < ActiveRecord::Migration[5.1]
  def change
    add_column :raffle_entries, :created_at, :datetime, null: false
    add_column :raffle_entries, :updated_at, :datetime, null: false
  end
end

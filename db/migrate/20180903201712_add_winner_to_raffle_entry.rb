class AddWinnerToRaffleEntry < ActiveRecord::Migration[5.1]
  def change
    add_column :raffle_entries, :winner, :boolean, :default => false, :null => false
  end
end

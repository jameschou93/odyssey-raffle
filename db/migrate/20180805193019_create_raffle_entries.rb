class CreateRaffleEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :raffle_entries do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :exercise
      t.string :repetitions
    end
  end
end

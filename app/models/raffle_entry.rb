class RaffleEntry < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, unless: :phone
  validates :phone, presence: true, unless: :email
  validates :exercise, presence: true
  validates :repetitions, presence: true 
end

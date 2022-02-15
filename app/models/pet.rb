class Pet < ApplicationRecord
  SPECIES = ['dog', 'cat', 'rabbit', 'bird', 'turtle']
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end

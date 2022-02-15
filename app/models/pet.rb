class Pet < ApplicationRecord
  SPECIES = ['dog', 'cat', 'rabbit', 'bird', 'turtle']
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def days_ago
    "found #{(Date.today - self.found_on).to_i} ago"
  end
end

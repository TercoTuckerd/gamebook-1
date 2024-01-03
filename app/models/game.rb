class Game < ApplicationRecord
  belongs_to :user

  validates :story, presence: true
end

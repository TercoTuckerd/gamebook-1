class Game < ApplicationRecord
  belongs_to :user
  has_many :statuses, dependent: :destroy

  validates :story, presence: true
end

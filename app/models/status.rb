class Status < ApplicationRecord
  belongs_to :user

  validates :battle_a, presence: true
  validates :battle_b, presence: true
  validates :battle_c, presence: true
  validates :battle_d, presence: true
  validates :battle_e, presence: true
  validates :battle_f, presence: true
  validates :battle_g, presence: true
  validates :battle_h, presence: true
  validates :battle_i, presence: true
  validates :battle_j, presence: true
  validates :hp,       presence: true
  validates :tek,      presence: true

end
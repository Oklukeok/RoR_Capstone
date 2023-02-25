class Entity < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :group, foreign_key: :group_id

  validates :name, length: { maximum: 80 }, presence: true
end

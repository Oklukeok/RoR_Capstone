class Group < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :entity

  validates :name, length: { maximum: 80 }, presence: true
end

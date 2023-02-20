class Entity < ApplicationRecord
    belongs_to :user, foreign_key: :name
    has_many :group

    validates :name, length: { maximum: 80 }, presence: true
end

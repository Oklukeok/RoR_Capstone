class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :entity, foreign_key: :user_id
  has_many :group, foreign_key: :user_id

  validates :name, length: { maximum: 80 }, presence: true
end

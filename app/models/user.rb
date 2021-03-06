class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  has_many :books, dependent: :destroy
  attachment :profile_image

  validates :name, presence: true, uniqueness: true, on: :create
  validates :name, presence: true, length: { minimum: 2, maximum: 20}
  validates :introduction, presence: false, length: { maximum: 50 }

end

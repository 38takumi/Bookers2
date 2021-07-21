class User < ApplicationRecord
  has_many :books, dependent: :destroy


  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { in: 2..20 }

  validates :introduction, length: { maximum: 500 }




#プロフィール画像用 deviseに入ってるかも
  attachment :profile_image_id


end
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :books, dependent: :destroy
#   
#   #引数で渡されたユーザidがBooksテーブル内に存在（exists?）するかどうか  
# アソシエーションはhas_manyでできているらしい
#   def favorited_by?(user)
#     books.where(user_id: user.id)
#     # books.where(user_id: user.id).exists?
#   end

  attachment :profile_image_id
end
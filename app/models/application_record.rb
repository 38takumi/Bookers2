class ApplicationRecord < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
 
  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
  self.abstract_class = true
end

class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "updated_at"]
  end

  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  
end

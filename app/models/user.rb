class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile

  #after user is created perform this particular action/method
  after_create :assign_role

  def assign_role
    if user_type == 'buyer'
      add_role :buyer
    elsif user_type == 'seller'
      add_role :seller
    elsif user_type == 'admin'
      add_role :admin
    end
  end


end

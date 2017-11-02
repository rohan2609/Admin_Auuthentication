class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         # getter for current user
  
  def create_general_setting
    role = 'Admin'
    role = 'SuperAdmin' if id == 1
    gs = GeneralSetting.create(name: 'SuperAdmin')
    update(general_setting_id: gs.id, role: role)
  end

  def admin_user
    return unless role == 'Admin'
    AdminUser.shod(admin_id)
  end


   def create_user_admin(admin_no, email)
    admin_no.each do |admin_id|
      AdminUser.create(email: email, admin_no: admin_id)
    end
  end

  def self.current
    Thread.current[:user]
  end

  # setter for current user
  def self.current=(user)
    Thread.current[:user] = user
  end
   
end

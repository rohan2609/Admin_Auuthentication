class AdminUser < ApplicationRecord
  belongs_to :user, optional:true
  after_save :create_user_account
  validates :admin_no, presence: true
  validates :contact, presence: true
  validates :email, presence: true, format: \
  { with: /\A[a-zA-Z0-9._-]+@([a-zA-Z0-9]+\.)+[a-zA-Z]{2,4}+\z/ }




private

  # This action create the user for employee login.
  def create_user_account
    user = User.new do |u|
      u.email = email
      u.password = admin_no
      u.role = 'Admin'
      u.general_setting_id = if User.current
                               User.current.general_setting_id
                             else
                               1
                             end
    end
    user.save
  end



end





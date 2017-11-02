class CreateUserAdmin < ActiveRecord::Migration[5.1]
  def change
    create_table :user_admins do |t|
      t.references :user, foreign_key: true
      t.references :admin_user, foreign_key: true
    end
  end
end

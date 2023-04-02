class AddAdmin < ActiveRecord::Migration[7.0]
  def change
    User.new do |admin|
      admin.email = 'admin@email.com'
      admin.password = 'password'
      admin.user_type = 'admin'
      admin.approved = true
      admin.skip_confirmation!
      admin.save!
    end
  end
end

class AddUserColumnToBuilds < ActiveRecord::Migration[5.2]
  def change
    add_column :builds, :user_id , :integer
  end
end

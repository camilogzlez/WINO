class ChangeOwnerFromNulToNotNul < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :owner, :boolean, null: false, default: false
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end

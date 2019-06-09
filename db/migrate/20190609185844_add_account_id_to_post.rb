class AddAccountIdToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :account_id, :integer, index: true
  end
end

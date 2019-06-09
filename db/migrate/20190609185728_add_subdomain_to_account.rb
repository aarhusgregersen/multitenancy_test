class AddSubdomainToAccount < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :subdomain, :string
  end
end

class AddVerifierToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :verifier, :string
  end
end

class RemoveVerifierFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :verifier, :string
  end
end

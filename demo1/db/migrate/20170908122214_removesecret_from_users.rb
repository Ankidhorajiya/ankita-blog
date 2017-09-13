class RemovesecretFromUsers < ActiveRecord::Migration[5.1]
  def change
  	def change
    remove_column :users, :secret, :string
  end
  end
end

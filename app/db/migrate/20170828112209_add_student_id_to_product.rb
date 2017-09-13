class AddStudentIdToProduct < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :products, :students
  end
end

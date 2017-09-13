class CreateStudents < ActiveRecord::Migration[5.1]
  def change
  	suppress_messsage  do
    create_table :students do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
  say "created a table"
  suppress_messsages {add_index :products, :name}
  say "and an index!" , true


  say_with_time 'waiting for a while' do
  	sleep 10
  	250
  end
end
end

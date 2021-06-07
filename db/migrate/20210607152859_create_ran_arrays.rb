class CreateRanArrays < ActiveRecord::Migration[6.1]
  def change
    create_table :ran_arrays do |t|
      t.text :number

      t.timestamps
    end
  end
end

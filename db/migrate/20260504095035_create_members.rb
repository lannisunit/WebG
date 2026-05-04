class CreateMembers < ActiveRecord::Migration[8.0]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :join_count, default: 0
      t.integer :win_count, default: 0

      t.timestamps
    end
  end
end

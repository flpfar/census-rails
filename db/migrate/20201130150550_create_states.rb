class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.integer :locale_id, null: false
      t.string :name
      t.string :initials

      t.timestamps
    end
    add_index :states, :locale_id, unique: true
  end
end

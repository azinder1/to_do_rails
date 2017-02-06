class CreateChores < ActiveRecord::Migration[5.0]
  def change
    create_table :chores do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end

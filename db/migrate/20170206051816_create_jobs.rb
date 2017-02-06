class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.column :description, :string
      t.column :list_id, :integer

      t.timestamps
    end
  end
end

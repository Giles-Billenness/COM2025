class CreateBuilds < ActiveRecord::Migration[5.2]
  def change
    create_table :builds do |t|
      t.string :title

      t.timestamps
    end
    add_column :builds, :cpu_id, :integer
  end
end

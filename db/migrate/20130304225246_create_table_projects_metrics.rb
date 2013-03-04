class CreateTableProjectsMetrics < ActiveRecord::Migration
  def change
    create_table :metrics_projects, id: false do |t|
      t.string :name
      t.integer :project_id
      t.integer :metric_id

      t.timestamps
    end

    add_index :metrics_projects, :project_id
    add_index :metrics_projects, :metric_id
    add_index :metrics_projects, [:project_id, :metric_id]
  end
end

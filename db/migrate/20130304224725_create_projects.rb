class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :git_url
      t.string :path

      t.timestamps
    end
  end
end

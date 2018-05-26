class CreateCategoryProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :category_projects do |t|
      t.string :category
      t.references :project_id, foreign_key: true

      t.timestamps
    end
  end
end

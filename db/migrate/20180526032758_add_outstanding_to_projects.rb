class AddOutstandingToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :outstanding, :bool
  end
end

class AddProjectToServices < ActiveRecord::Migration[7.0]
  def change
    add_reference :services, :project, null: false, foreign_key: true
  end
end

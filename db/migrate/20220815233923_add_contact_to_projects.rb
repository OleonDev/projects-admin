class AddContactToProjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :contact, null: false, foreign_key: true
  end
end

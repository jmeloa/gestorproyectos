class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :state, default: "propuesta"
      t.string :name
      t.string :description
      t.datetime :startdate
      t.datetime :enddate
      t.timestamps
    end
  end
end

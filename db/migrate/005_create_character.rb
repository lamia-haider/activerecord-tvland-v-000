class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      #primary key of :id is created for us!
      t.string :name
      t.integer :show_id
    end
  end
end

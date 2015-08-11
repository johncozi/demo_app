class CreateWidgits < ActiveRecord::Migration
  def change
    create_table :widgits do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

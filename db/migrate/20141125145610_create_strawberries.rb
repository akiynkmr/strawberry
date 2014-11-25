class CreateStrawberries < ActiveRecord::Migration
  def change
    create_table :strawberries do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

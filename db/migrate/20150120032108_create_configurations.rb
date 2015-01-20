class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.string  :page_title
      t.boolean :default_private_link
      t.string  :time_zone

      t.timestamps null: false
    end
  end
end
